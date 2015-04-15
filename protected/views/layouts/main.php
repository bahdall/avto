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

	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/style.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/response.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/fontello.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl ?>/assets/css/jquery.selectbox.css" />


	<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/assets/js/jquery.min.js"></script>
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
	<header>
		<div class="container">
			<div class="top">
				<ul class="nav-list nav-list-left">
					<li class="logo"><img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/logo.png" /></li>
					<li><div class="text">Красивые финансовые решения</div></li>
				</ul>

				<ul class="nav-list nav-list-right">
					<li class="phone">
						+998 71 987 65 43
						<div>
							<a href="#">info@avtokredit.uz</a>
						</div>
					</li>

				</ul>
				<div style="clear: both;"></div>
			</div>
			<nav class="menu">

				<?php
				$this->widget('zii.widgets.CMenu', array(
					'items'=>array(
						array('label'=>Yii::t('core', 'Каталог автомобилей'), 'url'=>array('/store/category/view', 'url'=>'root')),
						array('label'=>Yii::t('core', 'Как сделать заказ'), 'url'=>array('/pages/pages/view', 'url'=>'how-to-create-order')),
						array('label'=>Yii::t('core', 'Гарантия'), 'url'=>array('/pages/pages/view', 'url'=>'garantiya')),
						array('label'=>Yii::t('core', 'Доставка и оплата'), 'url'=>array('/pages/pages/view', 'url'=>'dostavka-i-oplata')),
						array('label'=>Yii::t('core', 'Обратная связь'), 'url'=>array('/feedback/default/index')),
					),
					'htmlOptions' => array('class' => 'nav-list',),
				));
				?>
			</nav>
			<div style="clear: both;"></div>

			<div class="short">
				<div class="short_text">
					3 простых шага к вашему автомобилю
				</div>
				<ul class="in-short">
					<li>
						<span class="in-short_icon">1</span>
						<div class="in-short_text">Оформите заявку<br /> онлайн</div>
						<div class="short_pointer"></div>
						<div class="short_pointer_mini"></div>
					</li>
					<li>
						<span class="in-short_icon">2</span>
						<div class="in-short_text">Широкий выбор <br />кредитных программ</div>
						<div class="short_pointer"></div>
						<div class="short_pointer_mini"></div>
					</li>
					<li>
						<span class="in-short_icon">3</span>
						<div class="in-short_text">Оплачивайте как <br />вам удобно</div>

					</li>
				</ul>
			</div>


		</div>
	</header>


	<div class="content">
		<div class="container">
			<div class="left">
				<?=$content?>
			</div>
			<div class="right">
				<div class="search">
					<div class="text">
						Поиск по параметрам
					</div>
					<form class="main_search">

						<div id="styled-select">
							<select>
								<option value="">Марка авто</option>
								<option value="">BMW</option>
								<option value="">Chevrolet</option>
								<option value="">Chrysler </option>
								<option value="">Citroen</option>
							</select>
						</div>
						<div class="form_group">
							<label>Цена</label>
							<br />

							<input type="text" name="from" class=""  placeholder="от" />
							<div id="from"></div>

							<input type="text" name="prior"  class="" placeholder="до"/>
							<div id="prior"></div>

						</div>
						<button class="btn btn-search" type="submit">Найти</button>
					</form>




				</div>
				<div class="right_box">
					<div class="text">Реклама</div>
					<img src="<?php echo Yii::app()->theme->baseUrl ?>/assets/images/main-reklama.png"/>
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
					array('label'=>Yii::t('core', 'Каталог автомобилей'), 'url'=>array('/store/category/view', 'url'=>'root')),
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
			<div class="footer_bottom">ООО “AvtoKredit”. Все права защищены.</div>
			<div style="clear: both;"></div>
		</div>
	</footer>


</body>
</html>