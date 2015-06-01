<?php

/**
 * Display product view page.
 */
class RestProductController extends RestController
{

    /**
     * @var StoreProduct
     */
    public $model;

    public function actionAuth()
    {
        $result = array(
            'success' => true,
        );
        if($error = $this->checkAuth())
        {
            $result = $error;
        }

        $this->_sendResponse(200, CJSON::encode($result),$this->format);

    }

    // Actions
    public function actionList()
    {
        //searching only for current users places (defaultScope returns appropriate condition)
        $models = StoreProduct::model()->findAll('user_id = '.Yii::app()->user->id);

        // Did we get some results?
        if(empty($models)) {
            // No
            $this->_sendResponse(200,
                sprintf('No items where found for model <b>Products</b>') );
        } else {
            // Prepare response
            $rows = array();
            $i = 0;
            foreach($models as $model)
            {
                $rows[$i] = $this->renderModel($model, '360x255' ,'cropFromCenter');
                $i++;
            }
            // Send the response
            $this->_sendResponse(200, CJSON::encode($rows),$this->format);
        }

    }
    public function actionView($id)
    {
        // Check if id was submitted via GET
        if(!isset($id) || empty($id))
            $this->_sendResponse(500, 'Error: Parameter <b>id</b> is missing' );

        $model = StoreProduct::model()->findByPk($id);
        // Did we find the requested model? If not, raise an error
        if(is_null($model))
            $this->_sendResponse(404, 'No Item found with id '.$id);
        else
            $this->_sendResponse(200, CJSON::encode($this->renderModel($model , '720x510')),$this->format);

    }


    public function actionCategories()
    {
        $categories = StoreCategory::flatTree();
        $this->_sendResponse(200, CJSON::encode($categories),$this->format);
    }


    public function actionAttributes()
    {
        $model = new StoreProduct();
        $model->type_id = 7;
        $attributes = $model->type->storeAttributes;
        $result = array();
        foreach($attributes as $attr)
        {
            $result[$attr->id] = $this->renderAttribute($attr);
        }

        if(is_null($result))
            $this->_sendResponse(404, 'No Items found');
        else
            $this->_sendResponse(200, CJSON::encode($result),$this->format);
    }

    protected function  renderAttribute($attribute)
    {
        $options = array();
        if($attribute->options)
        {
            foreach($attribute->options as $option)
            {
                $options[] = array(
                    'id' => $option->id,
                    'attribute_id' => $option->attribute_id,
                    'value' => $option->value,
                );
            }
        }


        $result = array(
            'id' => $attribute->id,
            'name' => $attribute->name,
            'title' => $attribute->attr_translate->title,
            'type' => $attribute->type,
            /*
                TYPE_TEXT          = 1;
                TYPE_TEXTAREA      = 2;
                TYPE_DROPDOWN      = 3;
                TYPE_SELECT_MANY   = 4;
                TYPE_RADIO_LIST    = 5;
                TYPE_CHECKBOX_LIST = 6;
                TYPE_YESNO         = 7;
            */
            'required' => $attribute->required,
            'options' => $options,
        );
        return $result;
    }


    public function actionCreate()
    {
        $model = new StoreProduct();

        $model->type_id = 7;
        $model->use_configurations = 0;
        $model->is_active = 1;

        // Set main category id to have categories drop-down selected value
        if($model->mainCategory)
            $model->main_category_id = $model->mainCategory->id;


        if (Yii::app()->request->isPostRequest)
        {
            $model->attributes = $_POST;
            $result = array(
                'success' => 'success'
            );

            // Handle related products
            $model->setRelatedProducts(Yii::app()->getRequest()->getPost('RelatedProductId', array()));

            if ($model->validate() && $this->validateAttributes($model))
            {
                $model->save();
                // Process categories
                $mainCategoryId = 1;
                if(isset($_POST['main_category_id']))
                    $mainCategoryId=$_POST['main_category_id'];

                $categories = $this->getParentCategories($mainCategoryId);

                $model->setCategories(Yii::app()->request->getPost('categories', $categories), $mainCategoryId);

                // Process attributes
                $this->processAttributes($model);

                // Process variants
                $this->processVariants($model);

                // Process configurations
                $this->processConfigurations($model);

                // Handle images
                $this->handleUploadedImages($model);

                // Set main image
                $this->updateMainImage($model);

                // Update image titles
                $this->updateImageTitles();

                $model->save();

                $result = $this->renderModel($model);
            }
            else
            {
                $result = array(
                    'errors' => $model->getErrors()
                );
            }
        }

        $this->_sendResponse(200, CJSON::encode($result),$this->format);

    }



    public function actionAddimages()
    {
        $product_id = Yii::app()->request->getPost('product_id', array());
        $model = StoreProduct::model()->findByPk($product_id);

        if(!$model)
        {
            $result = array(
                'errors' => 'No Item found'
            );

            $this->_sendResponse(200, CJSON::encode($result),$this->format);
        }

        // Handle images
        $this->handleUploadedImages($model);

        // Set main image
        $this->updateMainImage($model);

        $result = $this->renderModel($model);

        $this->_sendResponse(200, CJSON::encode($result),$this->format);
    }



    public function actionUpdate($id)
    {
        // Parse the PUT parameters. This didn't work: parse_str(file_get_contents('php://input'), $put_vars);
        $json = file_get_contents('php://input'); //$GLOBALS['HTTP_RAW_POST_DATA'] is not preferred: http://www.php.net/manual/en/ini.core.php#ini.always-populate-raw-post-data
        $put_vars = CJSON::decode($json,true);  //true means use associative array

        $model = Post::model()->findByPk($id);

        // Did we find the requested model? If not, raise an error
        if($model === null)
            $this->_sendResponse(400,
                sprintf("Error: Didn't find any model <b>Products</b> with ID <b>%s</b>.", $id) );

        // Try to assign PUT parameters to attributes
        foreach($put_vars as $var=>$value) {
            // Does model have this attribute? If not, raise an error
            if($model->hasAttribute($var))
                $model->$var = $value;
            else {
                $this->_sendResponse(500,
                    sprintf('Parameter <b>%s</b> is not allowed for model <b>Products</b>',
                        $var) );
            }
        }
        // Try to save the model
        if($model->save())
            $this->_sendResponse(200, CJSON::encode($model));
        else
            // prepare the error $msg

            // see actionCreate
            // ...
            $this->_sendResponse(500, CJSON::encode($model->getErrors()) );
    }
    public function actionDelete($id)
    {
        $model = Post::model()->findByPk($id);
        // Was a model found? If not, raise an error
        if($model === null)
            $this->_sendResponse(400,
                sprintf("Error: Didn't find any model <b>Product</b> with ID <b>%s</b>.",
                     $_GET['id']) );

        // Delete the model
        $num = $model->delete();
        if($num>0)
            $this->_sendResponse(200, $num);    //this is the only way to work with backbone
        else
            $this->_sendResponse(500,
                sprintf("Error: Couldn't delete model <b>Product</b> with ID <b>%s</b>.", $_GET['id']) );
    }


    protected function renderModel($model,$imgSize = false)
    {
        if(!$model)return false;
        $result = array();
        $result['id'] = $model->id;
        $result['name'] = $model->name;
        $result['price'] = $model->price;
        $result['year'] = $model->year;
        $result['category_id'] = $model->mainCategory->id;
        $result['category_name'] = $model->mainCategory->name;

        //Изображения товара
        foreach($model->images as $image)
        {
            $result['images'][] = Yii::app()->getBaseUrl(true).$image->getUrl($imgSize);
        }

        //Атрибуты товара
        $attributes = $model->type->storeAttributes;
        foreach($attributes as $a)
        {
            $value = $model->getEavAttribute($a->name);
            $attr = array(
                'code' => $a->name,
                'title' => $a->attr_translate->title,
                'valueCode' => $value,
                'value' => $a->renderValue($value),
            );

            $result['attributes'][] = $attr;
        }
        return $result;
    }

    protected function getParentCategories($id)
    {
        $model = StoreCategory::model()->findByPk($id);

        if(!$model)return array();

        $categories = array();

        $parent = $model->getParent();

        if( $parent && $parent->level > 1)$categories[] = $parent->id;
        else return $categories;

        while(true)
        {
            $parent = $parent->getParent();

            if( $parent && $parent->level > 1)$categories[] = $parent->id;
            else return $categories;
        }
    }


    /**
     * Save model attributes
     * @param StoreProduct $model
     * @return boolean
     */
    protected function processAttributes(StoreProduct $model)
    {
        $attributes = new CMap(Yii::app()->request->getPost('StoreAttribute', array()));
        if(empty($attributes))
            return false;

        $deleteModel = StoreProduct::model()->findByPk($model->id);
        $deleteModel->deleteEavAttributes(array(), true);

        // Delete empty values
        foreach($attributes as $key=>$val)
        {
            if(is_string($val) && $val === '')
                $attributes->remove($key);
        }

        return $model->setEavAttributes($attributes->toArray(), true);
    }

    /**
     * Save product variants
     * @param StoreProduct $model
     */
    protected function processVariants(StoreProduct $model)
    {
        $dontDelete = array();

        if(!empty($_POST['variants']))
        {
            foreach($_POST['variants'] as $attribute_id=>$values)
            {
                $i=0;
                foreach($values['option_id'] as $option_id)
                {
                    // Try to load variant from DB
                    $variant = StoreProductVariant::model()->findByAttributes(array(
                        'product_id'   => $model->id,
                        'attribute_id' => $attribute_id,
                        'option_id'    => $option_id
                    ));
                    // If not - create new.
                    if(!$variant)
                        $variant = new StoreProductVariant;

                    $variant->setAttributes(array(
                        'attribute_id' => $attribute_id,
                        'option_id'    => $option_id,
                        'product_id'   => $model->id,
                        'price'        => $values['price'][$i],
                        'price_type'   => $values['price_type'][$i],
                        'sku'          => $values['sku'][$i],
                    ), false);

                    $variant->save(false);
                    array_push($dontDelete, $variant->id);
                    $i++;
                }
            }
        }

        if(!empty($dontDelete))
        {
            $cr = new CDbCriteria;
            $cr->addNotInCondition('id', $dontDelete);
            $cr->addCondition('product_id='.$model->id);
            StoreProductVariant::model()->deleteAll($cr);
        }else
            StoreProductVariant::model()->deleteAllByAttributes(array('product_id'=>$model->id));
    }

    /**
     * Save product configurations
     * @param StoreProduct $model
     * @return mixed
     */
    protected function processConfigurations(StoreProduct $model)
    {
        $productPks = Yii::app()->request->getPost('ConfigurationsProductGrid_c0', array());

        // Clear relations
        Yii::app()->db->createCommand()->delete('StoreProductConfigurations', 'product_id=:id', array(':id'=>$model->id));

        if(!sizeof($productPks))
            return;

        foreach($productPks as $pk)
        {
            Yii::app()->db->createCommand()->insert('StoreProductConfigurations', array(
                'product_id'      => $model->id,
                'configurable_id' => $pk
            ));
        }
    }


    /**
     * Validate required store attributes
     * @param StoreProduct $model
     * @return bool
     */
    public function validateAttributes(StoreProduct $model)
    {
        $attributes = $model->type->storeAttributes;

        if(empty($attributes) || $model->use_configurations)
            return true;

        $errors = false;
        foreach($attributes as $attr)
        {
            if($attr->required && !isset($_POST['StoreAttribute'][$attr->name]))
            {
                $errors = true;
                $model->addError($attr->name, Yii::t('StoreModule.admin', 'Поле %s обязательно для заполнения', array('%s'=>$attr->title)));
            }
        }

        return !$errors;
    }


    /**
     * Updates image titles
     */
    public function updateImageTitles()
    {
        if(sizeof(Yii::app()->request->getPost('image_titles', array())))
        {
            foreach(Yii::app()->request->getPost('image_titles', array()) as $id=>$title)
            {
                StoreProductImage::model()->updateByPk($id, array(
                    'title'=>$title
                ));
            }
        }
    }


    /**
     * @param StoreProduct $model
     */
    public function updateMainImage(StoreProduct $model)
    {
        if(Yii::app()->request->getPost('mainImageId'))
        {
            // Clear current main image
            StoreProductImage::model()->updateAll(array('is_main'=>0), 'product_id=:pid', array(':pid'=>$model->id));
            // Set new main image
            StoreProductImage::model()->updateByPk(Yii::app()->request->getPost('mainImageId'),array('is_main'=>1));
        }
    }

    /**
     * @param StoreProduct $model
     */
    public function handleUploadedImages(StoreProduct $model)
    {
        $images = CUploadedFile::getInstancesByName('StoreProductImages');

        if($images && sizeof($images) > 0)
        {
            /** var $image CUploadedFile */
            foreach($images as $image)
            {
                if(!StoreUploadedImage::hasErrors($image))
                    $model->addImage($image);
                else
                    $this->setFlashMessage(Yii::t('StoreModule.admin', 'Ошибка загрузки изображения {name}', array('{name}'=>$image->getName())));
            }
        }
    }
}