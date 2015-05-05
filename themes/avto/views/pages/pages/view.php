<?php

/**
 * View page
 * @var Page $model
 */

// Set meta tags
$this->pageTitle       = ($model->meta_title) ? $model->meta_title : $model->title;
$this->pageKeywords    = $model->meta_keywords;
$this->pageDescription = $model->meta_description;
$this->breadcrumbs[] = $model->title;
?>


<div class="title"><?php echo $model->title ?></div>
<div style="clear: both;"></div>
<div class="contact" style="margin: 36px;">

	<?php
	if( $model->full_description )
		echo $model->full_description;
	else
		echo $model->short_description;
	?>
</div>