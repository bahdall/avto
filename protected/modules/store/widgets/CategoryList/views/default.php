<?php if(!$items)return false; ?>

<?php
$index = 0;
foreach($items as $item){
    if($index%4 == 0) echo '<ul>';
?>
    <li>
        <a href="<?php echo $item->getViewUrl()?>">
            <?php if($item->image):?><img src="<?php echo $item->getImage("0x20") ?>" alt="<?php echo $item->name ?>" title="<?php echo $item->name ?>" /><?php endif;?>
            <?php echo $item->name ?><span><?php echo $item->countProducts?></span>
        </a>
    </li>
<?php
    if( ($index+1) %4 == 0) echo '</ul>';
    $index++;
}
if($index%4 != 0) echo '</ul>';
?>
<div style="clear: both;"></div>