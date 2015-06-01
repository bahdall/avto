<?php

/**
 * @var StoreProduct $data
 */
?>
<div class="item">
	<a href="<?php echo $data->getRelativeUrl()?>">
		<div class="item_bg"></div>
		<div class="image">
			<?php
			if($data->mainImage)
				$imgSource = $data->mainImage->getUrl('300x200','newResize');
			else
				$imgSource = 'http://placehold.it/300x200';
			echo CHtml::image($imgSource, $data->mainImageTitle);
			?>
		</div>
		<div class="info">
			<div class="bg_bottom"></div>
			<div class="pointer"></div>
			<span class="name"><?php echo mb_strlen($data->name) <= 30 ? $data->name : mb_substr($data->name,0,30)."..."?></span>
			<div class="att"><?php echo $data->priceRange() ?></div>
		</div>
	</a>
</div>
