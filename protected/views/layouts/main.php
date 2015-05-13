<?php

	Yii::import('application.modules.store.components.SCompareProducts');
	Yii::import('application.modules.store.models.wishlist.StoreWishlist');

	$assetsManager = Yii::app()->clientScript;
	$assetsManager->registerCoreScript('jquery');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title><?php echo CHtml::encode($this->pageTitle) ?></title>
	<meta charset="UTF-8"/>
	<meta name="description" content="<?php echo CHtml::encode($this->pageDescription) ?>">
	<meta name="keywords" content="<?php echo CHtml::encode($this->pageKeywords) ?>">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&subset=cyrillic,cyrillic-ext,latin,greek-ext,greek,latin-ext,vietnamese' rel='stylesheet' type='text/css'/>

	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/fotorama-4.6.3/fotorama.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/style.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/response.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/fontello.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/jquery.selectbox.css" />
	<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/magnific-popup/magnific-popup.css" media="all"/>
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/calc.css" />


	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/fotorama-4.6.3/fotorama.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/magnific-popup/jquery.magnific-popup.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/jquery.validate.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/additional-methods.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/modal.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/date.format.js"></script>
	<script src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/calc.js"></script>


	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/jquery.selectbox-0.2.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/script.js"></script>


	<!--[if IE]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/css3-mediaqueries.js"></script>
	<![endif]-->

<!--	<script type="text/javascript" src="--><?php //echo Yii::app()->theme->baseUrl ?><!--/assets/js/common.js"></script>-->
</head>
<body>

<?php
	// Notifier module form
	Yii::import('application.modules.notifier.NotifierModule');
	//NotifierModule::renderDialog();
?>
	<header class="<?php echo $this->isHome() ? '' : 'header_inner'?>">
		<div class="container">
			<div class="top">
				<ul class="nav-list nav-list-left">
					<li class="logo">
						<a href="/"><img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/logo.png" /></a>
					</li>
					<li>
						<div class="text">
							<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
								'file'	=> 'slogan'
							));?>
						</div>
					</li>
				</ul>

				<ul class="nav-list nav-list-right">
					<li class="phone">
						<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
							'file'	=> 'phone'
						));?>
						<div>
							<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
								'file'	=> 'email'
							));?>
						</div>
					</li>

				</ul>
				<div style="clear: both;"></div>
			</div>
			<nav class="menu">

				<?php
				$this->widget('zii.widgets.CMenu', array(
					'items'=>array(
						array('label'=>Yii::t('core', 'Каталог автомобилей'), 'url'=>array('/store/category/view', 'url'=>'catalog')),
						array('label'=>Yii::t('core', 'Как сделать заказ'), 'url'=>array('/pages/pages/view', 'url'=>'how-to-create-order')),
						array('label'=>Yii::t('core', 'Гарантия'), 'url'=>array('/pages/pages/view', 'url'=>'garantiya')),
						array('label'=>Yii::t('core', 'Доставка и оплата'), 'url'=>array('/pages/pages/view', 'url'=>'dostavka-i-oplata')),
						array('label'=>Yii::t('core', 'Контакты'), 'url'=>array('/feedback/default/index')),
					),
					'htmlOptions' => array('class' => 'nav-list',),
				));
				?>
			</nav>
			<div style="clear: both;"></div>

			<?php if($this->isHome() ):?>

				<div class="short">
					<div class="short_text">
						3 простых шага к вашему автомобилю
					</div>
					<ul class="in-short">
						<li>
							<span class="in-short_icon">1</span>
							<div class="in-short_text">
								<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
									'file'	=> 'step_1'
								));?>
							</div>
							<div class="short_pointer"></div>
							<div class="short_pointer_mini"></div>
						</li>
						<li>
							<span class="in-short_icon">2</span>
							<div class="in-short_text">
								<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
									'file'	=> 'step_2'
								));?>
							</div>
							<div class="short_pointer"></div>
							<div class="short_pointer_mini"></div>
						</li>
						<li>
							<span class="in-short_icon">3</span>
							<div class="in-short_text">
								<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
									'file'	=> 'step_3'
								));?>
							</div>

						</li>
					</ul>
				</div>
			<?php else: ?>
				<?php
				$this->widget('zii.widgets.CBreadcrumbs', array(
					'links'=>$this->breadcrumbs,
					'htmlOptions' => array('class' => 'breadcrumb'),
					'tagName' => 'ol',
					'homeLink' => "<li>".CHtml::link(Yii::t('zii','Home'),Yii::app()->homeUrl)."<span></span></li>",
					'activeLinkTemplate' => '<li><a href="{url}">{label}</a> <span></span></li>',
					'inactiveLinkTemplate' => '<li class="active">{label}</li>',
					'separator' => false,
				));
				?>
			<?php endif;?>


		</div>
	</header>


	<div class="content">
		<div class="container <?php echo $this->isHome() ? '' : 'inner'?>">
			<div class="left">
				<?=$content?>
			</div>
			<div class="right">


				<?php
					Yii::import('application.modules.store.widgets.filter.SFilterRenderer');
					Yii::import('application.modules.store.models.*');

					$model = StoreCategory::model()->findByPk(238);

					$controller = Yii::app()->createController('store/category/home');
					$_GET['url'] = ( $this->id == 'category' && $this->action->id == 'view' && Yii::app()->request->getQuery('url')) ? Yii::app()->request->getQuery('url') : 'catalog';
					$controller[0]->run('home');
				?>

				<div class="right_box">
					<div class="text">Реклама</div>
					<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
						'file'	=> 'banner'
					));?>
				</div>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>


	<footer>
		<div class="container">
			<?php
			$this->widget('zii.widgets.CMenu', array(
				'items'=>array(
					array('label'=>Yii::t('core', 'Каталог автомобилей'), 'url'=>array('/store/category/view', 'url'=>'catalog')),
					array('label'=>Yii::t('core', 'Как сделать заказ'), 'url'=>array('/pages/pages/view', 'url'=>'how-to-create-order')),
					array('label'=>Yii::t('core', 'Гарантия'), 'url'=>array('/pages/pages/view', 'url'=>'garantiya')),
					array('label'=>Yii::t('core', 'Контакты'), 'url'=>array('/feedback/default/index')),
				),
				'htmlOptions' => array('class' => 'nav-list',),
			));
			?>

			<div class="social">
				<div class="text">Мы в соц. сетях</div>
				<ul class="nav-list">
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter" ></i></a></li>
				</ul>
			</div>
			<div style="clear: both;"></div>
			<div class="footer_bottom">
				<?php $this->widget("application.modules.core.widgets.IncludeFile.IncludeFile",array(
					'file'	=> 'copy'
				));?>
			</div>
			<div style="clear: both;"></div>
		</div>
	</footer>





</body>
</html>