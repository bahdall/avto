<?php

/**
 * @var StoreProduct $data
 */
?>
<div class="row">
	<div class="item">
		<div class="item_left">
			<div class="item_title"><a href="<?php echo Yii::app()->createUrl('store/frontProduct/view', array('url'=>$data->url) ) ?>"><?php echo $data->name?><span><?php echo $data->mainCategory->name ?></span></a></div>
			<div class="media">

				<div class="fotorama" data-loop="true" data-nav="thumbs">
					<?php
					// Display additional images
					foreach($data->images as $image)
					{
						echo CHtml::image($image->getUrl('600x400'), $image->title);
					}
					?>
				</div>


			</div>
		</div>
		<div class="item_right">

			<div class="attribute">

				<?php

				// Display product custom options table.
				if($data->getEavAttributes())
				{
					$this->widget('application.modules.store.widgets.SAttributesTableRenderer', array(
						'model'=>$data,
						'limit' => 4,
						'htmlOptions'=>array(
							'class'=> ''
						),
					));
				}
				?>

			</div>

			<div class="read_more">
				<a href="<?php echo Yii::app()->createUrl('store/frontProduct/view', array('url'=>$data->url) ) ?>">Подробнее <img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/item_read_more.png" /></a>
			</div>
			<div class="price"><?php echo StoreProduct::formatPrice($data->toCurrentCurrency()); ?> млн <span>UZS</span></div>
			<a href="#modal-order-<?php echo $data->id ?>" class="btn btn-order open-order-modal">Отправить заказ</a>
			<a href="#modal-calculate-<?php echo $data->id ?>" class="btn btn-calculate open-calculate-modal">Рассчитать кредит</a>
		</div>
	</div>

</div>


<!------------------------  ORDER MODEL -------------------------------->
<?php $this->renderPartial('../frontProduct/_orderForm', array('model' => $data)) ?>

<!------------------------  ORDER CALCULATE -------------------------------->
<div id="modal-calculate-<?php echo $data->id?>" class="modal mfp-hide modal-calculate">
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
