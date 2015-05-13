<?php
$k = 1000000; //коэффициент для перевода из млн. Сум в Суммы
?>

<!------------------------  ORDER CALCULATE -------------------------------->
<div id="modal-calculate-<?php echo $model->id?>" class="modal mfp-hide modal-calculate j-calc-content">
    <div class="modal__header">
    </div>
    <div class="row row--nopad">

        <div class="modal__main">
            <div class="modal__main__header">
                <div class="title">Калькулятор</div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>

            <div class="madal_body">
                <table class="table-form">
                    <tr class="calculate_sum">
                        <td>Стоимость приобретаемого автомобиля</td>
                        <td class="td" ><input type="text" name="price" value="<?php echo StoreProduct::formatPrice($model->toCurrentCurrency())*$k ?>" class="input_"/></td>
<!--                        <td class="td" ><input type="text" name="price" value="33600000" class="input_"/></td>-->
                    </tr>
                    <tr class="calculate_percentage">
                        <td>Собственные средства<br />(процент от полной  стоимости)</td>
                        <td class="td">
                            <ul>
                                <li><label><input type="radio" name="sum" value="0.25" checked>25%</label></li>
                                <li><label><input type="radio" name="sum" value="0.30">30%</label></li>
                                <li><label><input type="radio" name="sum" value="0.35">35%</label></li>
                                <li><label><input type="radio" name="sum" value="0.40">40%</label></li>
                                <li><label><input type="radio" name="sum" value="0.45">45%</label></li>
                                <li><label><input type="radio" name="sum" value="0.5">50%</label></li>
                            </ul>
                        </td>
                    </tr>
                    <tr  class="calculate_time">
                        <td>Срок кредита (месяцев)</td>
                        <td class="td">
                            <ul>
                                <li><label><input type="radio" name="year" value="12" checked> 12</label></li>
                                <li><label><input type="radio" name="year" value="24"> 24</label></li>
                                <li><label><input type="radio" name="year" value="36"> 36</label></li>
                            </ul>
                        </td>
                    </tr>
                    <tr class="calculate_time">
                        <td>Процентная ставка по кредиту, <br />% годовых</td>
                        <td class="td">
                            <ul>
                                <li><label><input type="radio" name="procent" value="0.19" checked> 19%</label></li>
                                <li><label><input type="radio" name="procent" value="0.20"> 20%</label></li>
                                <li><label><input type="radio" name="procent" value="0.21"> 21%</label></li>
                                <li><label><input type="radio" name="procent" value="0.22"> 22%</label></li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <div class="line"></div>
                <div class="message" >
                    <i class="icon-info-circled-alt"></i> Аннуитетные платежи одинаковые каждый месяц<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Дифференцированные платежи ежемесячно уменьшаются
                </div>
                <div class="bottom">
                    <a class="btn j-calc-result-open">Посчитать</a>
                </div>
            </div>

        </div>
    </div>
</div>









<!------------------------  ORDER CALCULATE RESULT -------------------------------->
<div id="modal-calculate-result-<?php echo $model->id?>" class="modal mfp-hide modal-calculate">
    <div class="modal__header">
    </div>
    <div class="row row--nopad">

        <div class="modal__main">
            <div class="modal__main__header">
                <div class="title">График выплат</div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>

            <div class="madal_body">
                <div class="j-result-content">

                </div>
                <div class="bottom">
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn e-return-calc j-goto-calc">Вернуться на калькулятор</a>
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn e-goto-desc j-goto-desc">Подробности</a>
                </div>
            </div>

        </div>
    </div>
</div>


<!------------------------  ORDER CALCULATE DESCRIPTION -------------------------------->
<div id="modal-calculate-desc-<?php echo $model->id?>" class="modal mfp-hide modal-calculate">
    <div class="modal__header">
    </div>
    <div class="row row--nopad">

        <div class="modal__main">
            <div class="modal__main__header">
                <div class="title">Подробности</div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>

            <div class="madal_body">
                <div class="j-desc-content" >

                </div>
                <div class="bottom">
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn e-return-calc j-goto-calc">Вернуться на калькулятор</a>
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn e-goto-desc j-goto-result">График выплат</a>
                </div>
            </div>

        </div>
    </div>
</div>


<script>
    var CalcOptions = {
        'commission': <?php echo Yii::app()->settings->get('core','commission')?>,
        'ocenka': <?php echo Yii::app()->settings->get('core','ocenka')?>,
        'notarius': <?php echo Yii::app()->settings->get('core','notarius')?>,
        'gai': <?php echo Yii::app()->settings->get('core','gai')?>,
        'sbor_gai': <?php echo Yii::app()->settings->get('core','sbor_gai')?>,
        'polis' : <?php echo Yii::app()->settings->get('core','polis')?>
    };
</script>