<?php
/**
 * Product view
 * @var StoreProduct $model
 * @var $this Controller
 */

// Set meta tags
$this->pageTitle = ($model->meta_title) ? $model->meta_title : $model->name;
$this->pageKeywords = $model->meta_keywords;
$this->pageDescription = $model->meta_description;

// Register main script
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.configurations.js', CClientScript::POS_END);

// Create breadcrumbs
if($model->mainCategory)
{
	$ancestors = $model->mainCategory->excludeRoot()->ancestors()->findAll();

	foreach($ancestors as $c)
		$this->breadcrumbs[$c->name] = $c->getViewUrl();

	// Do not add root category to breadcrumbs
	if ($model->mainCategory->id != 1)
		$this->breadcrumbs[$model->mainCategory->name] = $model->mainCategory->getViewUrl();

	$this->breadcrumbs[] = $model->name;

	if($model->mainCategory->image)
		$img = $model->mainCategory->getImage('80x40');
	elseif($model->mainCategory->getParent()->image)
		$img = $model->mainCategory->getParent()->getImage('80x40');
	else
		$img = false;
}
?>


<div class="title">
	<?php if( $img ):?>
		<img src="<?php echo $img?>" />
	<?php endif;?>
	<?php echo CHtml::encode($model->mainCategory->getParent()->name); ?>
</div>
<div style="clear: both;"></div>
<div class="car_details">
	<div class="row">
		<div class="details">
			<div class="details_left">
				<div class="details_title"><a href="#"><?php echo $model->name ?><span><?php echo $model->mainCategory->name ?></span></a></div>
				<div class="media">

					<div class="fotorama" data-loop="true" data-nav="thumbs">
						<?php
						// Display additional images
						foreach($model->images as $image)
						{
							echo CHtml::image($image->getUrl('600x400'), $image->title);
						}
						?>
					</div>


				</div>
			</div>
			<div class="details_right">

				<div class="attribute">
					<?php

					// Display product custom options table.
					if($model->getEavAttributes())
					{
						$this->widget('application.modules.store.widgets.SAttributesTableRenderer', array(
							'model'=>$model,
							'limit' => 4,
							'htmlOptions'=>array(
								'class'=> ''
							),
						));
					}
					?>
				</div>
				<div class="price"><?php echo StoreProduct::formatPrice($model->toCurrentCurrency()); ?> млн <span>UZS</span></div>
				<a href="#modal-order-<?php echo $model->id ?>" class="btn btn-order open-order-modal">Отправить заказ</a>
				<a href="#modal-calculate-<?php echo $model->id ?>" class="btn btn-calculate open-calculate-modal">Рассчитать кредит</a>

			</div>
			<div style="clear: both;"></div>
		</div>
		<div class="details_bottom">
			<div id="tabs-container">
				<ul class="tabs-menu">
					<li class="current"><a href="#tab-1">Характеристики</a></li>
				</ul>
				<div style="clear: both;"></div>
				<div class="tab">
					<div id="tab-1" class="tab-content">
						<div class="attribute">
							<?php $this->renderPartial('_attributes', array('model'=>$model)) ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<?php
$form = new OrderCreateForm();
$form->product_id = $model->id;
?>

<!------------------------  ORDER MODEL -------------------------------->
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
				<div class="successful">
					<ol class="successful_container">
						<li><i class="icon-ok-circled"></i>Ваш запрос успешно отправлен, скоро мы с Вами свяжемся.</li>
					</ol>
				</div>





				<?php echo CHtml::form(Yii::app()->createUrl('/store/ajax/createOrder'),'post',array('id' => 'form-'.$model->id)) ?>
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
				<?php CHtml::endForm() ?>
			</div>

		</div>
	</div>
</div>

<!------------------------  ORDER CALCULATE -------------------------------->
<div id="modal-calculate-<?php echo $model->id?>" class="modal mfp-hide modal-calculate">
	<div class="modal__header">
	</div>
	<div class="row row--nopad">

		<div class="modal__main">
			<div class="modal__main__header">
				<div class="title">Калькулятор</div>
				<button title="Close (Esc)" type="button" class="mfp-close">×</button>
			</div>

			<div class="madal_body">
				<table>
					<tr class="calculate_sum">
						<td>Стоимость приобретаемого автомобиля</td>
						<td class="td" ><input type="text"  class="input_"/></td>
					</tr>
					<tr class="calculate_percentage">
						<td>Собственные средства<br />(процент от полной  стоимости)</td>
						<td class="td">
							<ul>
								<li><label><input type="radio" name="sum" value="25">25%</label></li>
								<li><label><input type="radio" name="sum" value="30">30%</label></li>
								<li><label><input type="radio" name="sum" value="35">35%</label></li>
								<li><label><input type="radio" name="sum" value="40">40%</label></li>
								<li><label><input type="radio" name="sum" value="45">45%</label></li>
								<li><label><input type="radio" name="sum" value="25">50%</label></li>
							</ul>
						</td>
					</tr>
					<tr  class="calculate_time">
						<td>Срок кредита (месяцев)</td>
						<td class="td">
							<ul>
								<li><label><input type="radio" name="year" value="firefox"> 12</label></li>
								<li><label><input type="radio" name="year" value="chrome"> 24</label></li>
								<li><label><input type="radio" name="year" value="safari"> 36</label></li>
							</ul>
						</td>
					</tr>
					<tr class="calculate_rate">
						<td class="td">Процентная ставка по кредиту, <br />% годовых</td>
						<td><input type="text" class="input_"  /></td>
					</tr>
					<tr class="calculate_type">
						<td>Тип кредита</td>
						<td class="td">
							<div class="select">
								<select>
									<option></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
						</td>
					</tr>
				</table>
				<div class="line"></div>
				<div class="message" >
					<i class="icon-info-circled-alt"></i> Аннуитетные платежи одинаковые каждый месяц<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Дифференцированные платежи ежемесячно уменьшаются
				</div>
				<div class="bottom">
					<button class="btn">Посчитать</button>
				</div>
			</div>

		</div>
	</div>
</div>


<script>
	var product_id = <?php echo $model->id?>;
	var rules = {
		rules: {
			"OrderCreateForm[name]": {
				required: true
			},
			"OrderCreateForm[email]": {
				required: true,
				email: true
			},
			"OrderCreateForm[phone]": {
				required: true,
				number: true,
				minlength: 12
			}

		},
		messages: {
			"OrderCreateForm[name]": {
				required: '<i class="icon-info-4"></i>Поле <span>ФИО</span> обязательно для заполнения'
			},
			"OrderCreateForm[email]": {
				required: '<i class="icon-info-4"></i>Поле <span>Эл. почта</span> обязательно для заполнения',
				email:'<i class="icon-info-4"></i>Поле <span>Эл. почта</span> должна быть вида example@mail.ru'
			},
			"OrderCreateForm[phone]": {
				required: '<i class="icon-info-4"></i>Поле <span>Телефон</span> обязательно для заполнения',
				number:'<i class="icon-info-4"></i>Номер телефона должен быть вида 998935412369',
				minlength: '<i class="icon-info-4"></i>Номер телефона должен быть вида 998935412369'
			}
		},
		errorElement : 'li',
		errorLabelContainer: '.error_container'
	};


	/*------------------Validate------------------*/
	$("#form-"+product_id).validate(rules);
</script>
