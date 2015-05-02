<?php

Yii::import('store.models.StoreDeliveryMethod');

/**
 * Used in cart to create new order.
 */
class OrderCreateForm extends CFormModel
{
    public $product_id;
    public $name;
    public $email;
    public $phone;
    public $comment;

    public function init()
    {
    }

    /**
     * Validation
     * @return array
     */
    public function rules()
    {
        return array(
            array('name, email, product_id, comment, phone', 'required'),
            array('email', 'email'),
            array('comment', 'length', 'max'=>'500'),
            array('email', 'length', 'max'=>'100'),
            array('phone', 'length', 'max'=>'30'),
        );
    }

    public function attributeLabels()
    {
        return array(
            'name'        => Yii::t('OrdersModule.core', 'Имя'),
            'email'       => Yii::t('OrdersModule.core', 'Email'),
            'comment'     => Yii::t('OrdersModule.core', 'Комментарий'),
            'product_id'     => Yii::t('OrdersModule.core', 'Товар'),
            'phone'       => Yii::t('OrdersModule.core', 'Номер телефона'),
        );
    }
}
