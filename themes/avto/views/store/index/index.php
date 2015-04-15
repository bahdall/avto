<div class="car_model_block">
	<div class="text">Марка автомобилей</div>
	<?$this->widget('application.modules.store.widgets.CategoryList.CategoryList' , array(
		'parent' => 238
	))?>
</div>
<div class="last_add">
	<div class="text" >Последние добавленные</div>
	<div style="clear: both;"></div>


	<?php
	$index = 0;
	foreach($newest as $p)
	{
		if($index%3 == 0)echo '<div class="row">';
		$this->renderPartial('_product', array('data'=>$p));
		if( ($index+1)%3 == 0 && $index != 0)echo '</div>';

		$index++;
	}
	?>



	<div class="text_all" ><a href="#">Все автомобили <span></span></a></div>
	<div style="clear: both;"></div>
</div>