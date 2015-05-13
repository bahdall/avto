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
			<a href="#modal-calculate-<?php echo $data->id ?>" data-itemid="<?php echo $data->id ?>" class="btn btn-calculate open-calculate-modal">Рассчитать кредит</a>
		</div>
	</div>

</div>



<!------------------------  ORDER MODEL -------------------------------->
<?php $this->renderPartial('../frontProduct/_orderForm', array('model' => $data)) ?>

<!------------------------  ORDER CALCULATE -------------------------------->
<?php $this->renderPartial('../frontProduct/_calcModal', array('model' => $data)) ?>