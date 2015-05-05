<?php
$form = new OrderForm();
$form->product_id = $model->id;
?>

<div id="modal-order-<?php echo $model->id ?>" class="modal mfp-hide modal-order">
    <div class="modal__header">
    </div>
    <div class="row row--nopad">

        <div class="modal__main">
            <div class="modal__main__header modal_title">
                <div class="title">Форма заявки</div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>

            <div class="madal_body">
                <div class="error">
                    <ol class="error_container">
                    </ol>
                </div>
                <div class="successful hidden">
                    <ol class="successful_container">
                        <li><i class="icon-ok-circled"></i>Ваш запрос успешно отправлен, скоро мы с Вами свяжемся.</li>
                    </ol>
                </div>

                <?php echo CHtml::beginForm(Yii::app()->createUrl('/store/ajax/createOrder'),'post',array(
                    'id' => 'form-'.$model->id,
                    'class' => 'j-order-form',
                )) ?>
                <?php echo CHtml::activeHiddenField($form,'product_id') ?>
                <div class="form_group">
                    <div class="label">ФИО</div>
                    <?php echo CHtml::activeTextField($form,'name',array('class' => 'input_'))?>
                </div>
                <div class="form_group">
                    <div class="label">Эл. почта</div>
                    <?php echo CHtml::activeTextField($form,'email',array('class' => 'input_'))?>
                </div>
                <div class="form_group">
                    <div class="label">Телефон</div>
                    <?php echo CHtml::activeTextField($form,'phone',array('class' => 'input_ phone'))?>
                </div>
                <div class="form_group">
                    <div class="label" >Сообщение</div>
                    <?php echo CHtml::activeTextArea($form,'comment',array('class' => 'input_'))?>
                </div>
                <div class="line"></div>
                <div class="message" >
                    <i class="icon-info-circled-alt"></i> Все поля обязательны для заполнения<br />
                </div>
                <div class="bottom">
                    <input type="submit" class="btn" value="Отправить заказ" />
                </div>
                <?php echo CHtml::endForm() ?>
            </div>

        </div>
    </div>
</div>



<script>
    /*------------------Validate------------------*/
    $(function(){


        var rules = {
            rules: {
                "OrderForm[name]": {
                    required: true
                },
                "OrderForm[comment]": {
                    required: true
                },
                "OrderForm[email]": {
                    required: true,
                    email: true
                },
                "OrderForm[phone]": {
                    required: true,
                    number: true,
                    minlength: 12
                }

            },
            messages: {
                "OrderForm[name]": {
                    required: '<i class="icon-info-4"></i>Поле <span>ФИО</span> обязательно для заполнения'
                },
                "OrderForm[comment]": {
                    required: '<i class="icon-info-4"></i>Поле <span>Сообщение</span> обязательно для заполнения'
                },
                "OrderForm[email]": {
                    required: '<i class="icon-info-4"></i>Поле <span>Эл. почта</span> обязательно для заполнения',
                    email:'<i class="icon-info-4"></i>Поле <span>Эл. почта</span> должна быть вида example@mail.ru'
                },
                "OrderForm[phone]": {
                    required: '<i class="icon-info-4"></i>Поле <span>Телефон</span> обязательно для заполнения',
                    number:'<i class="icon-info-4"></i>Номер телефона должен быть вида 998935412369',
                    minlength: '<i class="icon-info-4"></i>Номер телефона должен быть вида 998935412369'
                }
            },
            submitHandler: function(form, e) {
                e.preventDefault();

                createOrder($(form));
            },
            errorElement : 'li',
            errorLabelContainer: '.error_container'
        };


        $("#form-<?php echo $model->id?>").validate(rules);
    });
</script>

