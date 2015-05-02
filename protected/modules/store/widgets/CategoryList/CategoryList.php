<?php
/**
 * Created by PhpStorm.
 * User: HUNTKEY
 * Date: 30.03.2015
 * Time: 10:49
 */
Yii::import('application.modules.store.models.StoreCategory');

class CategoryList extends CWidget
{
    public $parent = 1;
    public $view = 'default';

    public function run()
    {
        $model = StoreCategory::model()->findByPk($this->parent);
        $items = $model->children()->findAll(array('order' => 'cat_translate.name'));

        $this->render($this->view,array(
            'items' => $items,
            'model' => $model,
        ));
    }


}