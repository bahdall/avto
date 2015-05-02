<?php

/**
 * Category view
 * @var $this CategoryController
 * @var $model StoreCategory
 * @var $provider CActiveDataProvider
 * @var $categoryAttributes
 */

// Set meta tags
$this->pageTitle = ($this->model->meta_title) ? $this->model->meta_title : $this->model->name;
$this->pageKeywords = $this->model->meta_keywords;
$this->pageDescription = $this->model->meta_description;

// Create breadcrumbs
$ancestors = $this->model->excludeRoot()->ancestors()->findAll();

foreach($ancestors as $c)
	$this->breadcrumbs[$c->name] = $c->getViewUrl();

$this->breadcrumbs[] = $this->model->name;

if($this->model->image)
	$img = $this->model->getImage('80x40');
elseif($this->model->getParent()->image)
	$img = $this->model->getParent()->getImage('80x40');
else
	$img = false;
?>

<div class="title">
	<?php if( $img ):?>
		<img src="<?php echo $img?>" />
	<?php endif;?>
	<?php echo CHtml::encode($this->model->name); ?>
</div>

<div class="filter">
	<ul>
		<li>
			<?php
			if( !isset($_GET['sort']) || $_GET['sort'] == 'created' || $_GET['sort'] == 'created.desc' )
			{
				echo CHtml::dropDownList('sorter', Yii::app()->request->url, array(
					Yii::app()->request->removeUrlParam('/store/category/view', 'sort')  => 'Дата добавления',
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'created'))  => Yii::t('StoreModule.core', 'Сначала старые'),
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'created.desc')) => Yii::t('StoreModule.core', 'Сначала новые'),
				), array(
					'onchange'=>'applyCategorySorter(this)',
					'class' => 'select',
				));
			}
			else
			{
				echo CHtml::link('Дата добавления', Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'created')));
			}
			?>

		</li>
		<li>
			<?php
			if( $_GET['sort'] == 'price' || $_GET['sort'] == 'price.desc' )
			{
				echo CHtml::dropDownList('sorter', Yii::app()->request->url, array(
					Yii::app()->request->removeUrlParam('/store/category/view', 'sort')  => 'Цена',
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price'))  => Yii::t('StoreModule.core', 'Сначала Дешевые'),
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price.desc')) => Yii::t('StoreModule.core', 'Сначала Дорогие'),
				), array(
					'onchange'=>'applyCategorySorter(this)',
					'class' => 'select',
				));
			}
			else
			{
				echo CHtml::link('Цена', Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price')));
			}
			?>
		</li>
		<li>
			<?php
			if( $_GET['sort'] == 'year' || $_GET['sort'] == 'year.desc' )
			{
				echo CHtml::dropDownList('sorter', Yii::app()->request->url, array(
					Yii::app()->request->removeUrlParam('/store/category/view', 'sort')  => 'Году выпуска',
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year'))  => Yii::t('StoreModule.core', 'Сначала Старые'),
					Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year.desc')) => Yii::t('StoreModule.core', 'Сначала Новые'),
				), array(
					'onchange'=>'applyCategorySorter(this)',
					'class' => 'select',
				));
			}
			else
			{
				echo CHtml::link('Году выпуска', Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year')));
			}
			?>
		</li>
	</ul>
</div>
<div style="clear: both;"></div>

<?php if( $this->model->children()->findAll() ): ?>
	<div class="car_model_block">
		<div class="text">Марка автомобилей</div>
		<?$this->widget('application.modules.store.widgets.CategoryList.CategoryList' , array(
			'parent' => $this->model->id
		))?>
	</div>
<?php endif ?>

<div class="car_list">

		<?php
			$this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$provider,
				'ajaxUpdate'=>false,
				'template'=>'{items} {pager}',
				'emptyText' => 'К сожалению по вашему запросу не найдено подходящей машины.',
				'itemView'=>$itemView,
				'sortableAttributes'=>array(
					'name', 'price'
				),
				'htmlOptions' => array(
					'class' => '',
				),
				'pagerCssClass' => '',
				'pager' => array(
					'htmlOptions' => array(
						'class' => 'pager',
					),
					'selectedPageCssClass' => 'active',
					'lastPageLabel' => ' ',
					'firstPageLabel' => ' ',
					'nextPageLabel' => '<span></span>',
					'nextPageCssClass' => 'next',
					'prevPageLabel' => '<span></span>',
					'previousPageCssClass' => 'previous',
				),
			));
		?>

</div><!-- catalog_with_sidebar end -->
