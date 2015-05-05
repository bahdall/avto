<?php

Yii::import('store.models.StoreDeliveryMethod');

/**
 * Used in cart to create new order.
 */
class OrderForm extends CFormModel
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
            'name'        => Yii::t('core', 'Имя'),
            'email'       => Yii::t('core', 'Email'),
            'comment'     => Yii::t('core', 'Комментарий'),
            'product_id'     => Yii::t('core', 'Товар'),
            'phone'       => Yii::t('core', 'Номер телефона'),
        );
    }
}
