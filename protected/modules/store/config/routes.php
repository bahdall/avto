<?php

/**
 * StoreModule routes
 */
return array(
	'product/<url>'                           => array('store/frontProduct/view', 'urlSuffix'=>'.html'),
	'product/captcha'                         => array('store/frontProduct/captcha'),
	'store/ajax/activateCurrency/<id>'        => array('store/ajax/activateCurrency'),
	'store/ajax/rateProduct/<id>'             => array('store/ajax/rateProduct'),
	'store/ajax/getSubCatergories'            => array('store/ajax/getSubCatergories'),
	'store/ajax/createOrder'             	  => array('store/ajax/createOrder'),
	'store/index/renderProductsBlock/<scope>' => array('store/index/renderProductsBlock'),
	array(
		'class' => 'application.modules.store.components.SStoreCategoryUrlRule'
	),
	'products/search/*'                       => array('store/category/search'),
	// Compare
	'products/compare'             => array('store/compare/index'),
	'products/compare/add/<id>'    => array('store/compare/add'),
	'products/compare/remove/<id>' => array('store/compare/remove'),
	// WishList
	'wishlist'             => array('store/wishlist/index'),
	'wishlist/add/<id>'    => array('store/wishlist/add'),
	'wishlist/remove/<id>' => array('store/wishlist/remove'),
	'wishlist/view/<key>'  => array('store/wishlist/view'),
	'store/index'          => 'site/error',
	'store/compare'        => 'site/error',
	'store/wishlist'       => 'site/error',
	'manufacturer/<url>'   => array('/store/manufacturer/index'),

	// REST patterns
	array('store/RestProduct/auth', 'pattern'=>'api/auth', 'verb'=>'GET'),
	array('store/RestProduct/list', 'pattern'=>'api/products', 'verb'=>'GET'),
	array('store/RestProduct/view', 'pattern'=>'api/products/<id:\d+>', 'verb'=>'GET'),
	array('store/RestProduct/update', 'pattern'=>'api/products/<id:\d+>', 'verb'=>'PUT'),
	array('store/RestProduct/delete', 'pattern'=>'api/products/<id:\d+>', 'verb'=>'DELETE'),
	array('store/RestProduct/create', 'pattern'=>'api/products', 'verb'=>'POST'),
);