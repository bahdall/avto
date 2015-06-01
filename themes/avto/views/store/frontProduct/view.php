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
		$this->breadcrumbs[$c->name] = array($c->getViewUrl());

	// Do not add root category to breadcrumbs
	if ($model->mainCategory->id != 1)
	{
		$this->breadcrumbs[$model->mainCategory->name] = array($model->mainCategory->getViewUrl());
	}

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
							echo CHtml::image($image->getUrl('600x400','newResize'), $image->title);
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
				<a href="#modal-calculate-<?php echo $model->id ?>" data-itemid="<?php echo $model->id ?>" class="btn btn-calculate open-calculate-modal">Рассчитать кредит</a>

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





<!------------------------  ORDER MODEL -------------------------------->
<?php $this->renderPartial('_orderForm', array('model' => $model)) ?>


<!------------------------  ORDER CALCULATE -------------------------------->
<?php $this->renderPartial('_calcModal', array(
	'model' => $model,
	'price' => StoreProduct::formatPrice($model->toCurrentCurrency())*1000000,
	'id'    => $model->id,
)) ?>




