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

    // Actions
    public function actionList()
    {
        //searching only for current users places (defaultScope returns appropriate condition)
        $models = StoreProduct::model()->findAll();

        // Did we get some results?
        if(empty($models)) {
            // No
            $this->_sendResponse(200,
                sprintf('No items where found for model <b>Products</b>') );
        } else {
            // Prepare response
            $rows = array();
            foreach($models as $model)
                $rows[] = $model->attributes;
            // Send the response
            $this->_sendResponse(200, CJSON::encode($rows));
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
            $this->_sendResponse(200, CJSON::encode($model));

    }
    public function actionCreate()
    {
        $model = new Post;

        // Try to assign POST values to attributes
        foreach($_POST as $var=>$value) {
            // Does the model have this attribute? If not raise an error
            if($model->hasAttribute($var))
                $model->$var = $value;
            else
                $this->_sendResponse(500,
                    sprintf('Parameter <b>%s</b> is not allowed for model <b>Products</b>', $var) );
        }
        // Try to save the model
        if($model->save())
            $this->_sendResponse(200, CJSON::encode($model));
        else {
            // Errors occurred
            $msg = "<h1>Error</h1>";
            $msg .= sprintf("Couldn't create model <b>%s</b>", $_GET['model']);
            $msg .= "<ul>";
            foreach($model->errors as $attribute=>$attr_errors) {
                $msg .= "<li>Attribute: $attribute</li>";
                $msg .= "<ul>";
                foreach($attr_errors as $attr_error)
                    $msg .= "<li>$attr_error</li>";
                $msg .= "</ul>";
            }
            $msg .= "</ul>";
            $this->_sendResponse(500, $msg );
        }

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
}