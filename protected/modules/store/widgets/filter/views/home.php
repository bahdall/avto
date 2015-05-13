<?php

/**
 * @var $this SFilterRenderer
 */

/**
 * Render filters based on the next array:
 * $data[attributeName] = array(
 *	    'title'=>'Filter Title',
 *	    'selectMany'=>true, // Can user select many filter options
 *	    'filters'=>array(array(
 *	        'title'      => 'Title',
 *	        'count'      => 'Products count',
 *	        'queryKey'   => '$_GET param',
 *	        'queryParam' => 'many',
 *	    ))
 *  );
 */

// Render active filters
$active = $this->getActiveFilters();
$category = $this->getOwner()->_loadModel(Yii::app()->request->getQuery('url'));
$cur = StoreCurrency::model()->findAll();
?>



<div class="search">
    <div class="text">
        Поиск по параметрам
    </div>
    <?php echo CHtml::form( $this->model->getViewUrl(), "post", array('id' => $id, 'class' => 'main_search j-filter-form') )?>

        <?php $this->renderCategories(2); ?>

        <div class="form_group">
            <label>Цена</label>
            <br />

            <?php echo CHtml::textField('min_price', (isset($_GET['min_price'])) ? (int)$this->getCurrentMinPrice():null, array(
                'placeholder' => 'от',
                'data-close'  => 'from',
            ) ) ?>
            <div id="from"></div>

            <?php echo CHtml::textField('max_price', (isset($_GET['max_price'])) ? (int)$this->getCurrentMaxPrice():null, array(
                'placeholder' => 'до',
                'data-close'  => 'prior',
            ) ) ?>
            <div id="prior"></div>

        </div>
        <div style="clear: both"></div>


        <div class="bb-filter-currency">
            <?php
            $data = array('Валюта');
            $data += CHtml::listData($cur,'id','name');
            $val = isset($_GET['currency']) ? $_GET['currency'] : '';
            echo CHtml::openTag('div',array(
                'class' => 'styled-select',
            ));
            echo CHtml::dropDownList('currency',$val,$data);
            echo CHtml::closeTag('div');
            ?>
        </div>
        <div style="clear: both"></div>


        <?php
        // Display attributes
        $i=0;
        $flag = false;
        foreach($attributes as $attrData)
        {
            if( $i >= 3 && $flag == false)
            {
                $flag = true;
                echo "<div class='j-more-block' style='display: none'>";
            }
            echo CHtml::openTag('div',array('class' => 'form_group'));

            echo CHtml::openTag('label');
            echo CHtml::encode($attrData['title']);
            echo CHtml::closeTag('label');

            echo CHtml::openTag('ul', array('class'=>'filter_links'));
            foreach($attrData['filters'] as $key => $filter)
            {
                $url = Yii::app()->request->addUrlParam('/store/category/view', array($filter['queryKey'] => $filter['queryParam']), $attrData['selectMany']);
                $queryData = explode(';', Yii::app()->request->getQuery($filter['queryKey']));
                $attrName = $attrData['selectMany'] ? $filter['queryKey']."[]" : $filter['queryKey'];

                echo CHtml::openTag('li');
                // Filter link was selected.
                if(in_array($filter['queryParam'], $queryData))
                {
                    echo CHtml::checkBox($attrName, true, array(
                        'value' => $filter['queryParam'],
                        'id' => $filter['queryKey'].'_'.$key,
                    ));
                    echo CHtml::label($filter['title'],$filter['queryKey']."_".$key);
                }
                elseif($filter['count'] > 0)
                {
                    echo CHtml::checkBox($attrName, false, array(
                        'value' => $filter['queryParam'],
                        'id' => $filter['queryKey'].'_'.$key,
                    ));
                    echo CHtml::label($filter['title'],$filter['queryKey']."_".$key).' ('.$filter['count'].')';
                }
                else
                {
//                    echo CHtml::checkBox($attrName, false, array('disabled' => 'disabled' ));
//                    echo CHtml::label($filter['title'],$filter['queryKey']."_".$key).' (0)';
                }

                echo CHtml::closeTag('li');
            }
            echo CHtml::closeTag('ul');

            echo CHtml::closeTag('div');

            $i++;
        }

        if($i > 3)
        {
            echo "</div>";
            echo "<a class='e-more-btn j-more-btn'>ЕЩЕ<i class='icon-down-1'></i></a>";
        }
        ?>

        <?php
        if( !empty($active) )
            echo CHtml::link(Yii::t('StoreModule.core','Сбросить фильтр'), $this->getOwner()->model->viewUrl, array('class'=>'btn btn-search no-margin'));
        ?>
        <button class="btn btn-search" type="submit">Найти</button>
    <?php echo CHtml::endForm()?>
</div>


<script>

    $(function(){
        $(".j-category").change(categoryFilter);

        function categoryFilter(){

            var level = $(this).parent().data('level');
            var form_data = $(".j-filter-form").serialize();
            level++;

            $.get('/store/ajax/getSubCatergories?id='+$(this).val(),form_data,function(data){
                if(!data)
                {
                    $(".j-category-block [data-level]").each(function(){
                        if($(this).data("level") >= level)$(this).remove();
                    });
                }
                else
                {
                    $(".j-category-block [data-level]").each(function(){
                        if($(this).data("level") > level)$(this).remove();
                    });
                }




                var catBlock = $(".j-category-block [data-level="+level+"]");

                if(catBlock.length > 0)
                {
                    catBlock.html(data);
                }
                else if(data)
                {
                    $(".j-category-block").append("<div class='styled-select' data-level='"+level+"'>"+data+"</div>");
                }

                $(".j-category").change(categoryFilter);

            });
        }
    });

</script>