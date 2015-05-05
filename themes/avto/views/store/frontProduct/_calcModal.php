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
                <table>
                    <tr class="calculate_sum">
                        <td>Стоимость приобретаемого автомобиля</td>
                        <td class="td" ><input type="text"  class="input_"/></td>
                    </tr>
                    <tr class="calculate_percentage">
                        <td>Собственные средства<br />(процент от полной  стоимости)</td>
                        <td class="td">
                            <ul>
                                <li><label><input type="radio" name="sum" value="25">25%</label></li>
                                <li><label><input type="radio" name="sum" value="30">30%</label></li>
                                <li><label><input type="radio" name="sum" value="35">35%</label></li>
                                <li><label><input type="radio" name="sum" value="40">40%</label></li>
                                <li><label><input type="radio" name="sum" value="45">45%</label></li>
                                <li><label><input type="radio" name="sum" value="25">50%</label></li>
                            </ul>
                        </td>
                    </tr>
                    <tr  class="calculate_time">
                        <td>Срок кредита (месяцев)</td>
                        <td class="td">
                            <ul>
                                <li><label><input type="radio" name="year" value="firefox"> 12</label></li>
                                <li><label><input type="radio" name="year" value="chrome"> 24</label></li>
                                <li><label><input type="radio" name="year" value="safari"> 36</label></li>
                            </ul>
                        </td>
                    </tr>
                    <tr class="calculate_rate">
                        <td class="td">Процентная ставка по кредиту, <br />% годовых</td>
                        <td><input type="text" class="input_"  /></td>
                    </tr>
                    <tr class="calculate_type">
                        <td>Тип кредита</td>
                        <td class="td">
                            <div class="select">
                                <select>
                                    <option></option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="line"></div>
                <div class="message" >
                    <i class="icon-info-circled-alt"></i> Аннуитетные платежи одинаковые каждый месяц<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Дифференцированные платежи ежемесячно уменьшаются
                </div>
                <div class="bottom">
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn j-calc-result-open">Посчитать</a>
                </div>
            </div>

        </div>
    </div>
</div>









<!------------------------  ORDER CALCULATE -------------------------------->
<div id="modal-calculate-result-<?php echo $model->id?>" class="modal mfp-hide modal-calculate">
    <div class="modal__header">
    </div>
    <div class="row row--nopad">

        <div class="modal__main">
            <div class="modal__main__header">
                <div class="title">Калькулятор</div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>

            <div class="madal_body">
                <table class="credit-monthly-payments" id="credit-monthly-payments">
                    <thead>
                    <tr>
                        <th class="month">месяц</th>
                        <th class="debt-s">долг в начале месяца, сум.</th>
                        <th class="return">возврат основной части кредита, сум.</th>
                        <th class="percents">проценты по кредиту, сум.</th>
                        <th class="payment">ежемесячный взнос, сум.</th>
                        <!-- <th class="debt-e">долг в конце месяца, сум.</th> -->
                    </tr>
                    </thead>
                    <tbody><tr><td class="month">май 2015</td><td class="debt-s">7 500 000</td><td class="return">572 424</td><td class="percents">118 750</td><td class="payment">691 174</td></tr><tr><td class="month">июнь 2015</td><td class="debt-s">6 927 576</td><td class="return">581 488</td><td class="percents">109 687</td><td class="payment">691 174</td></tr><tr><td class="month">июль 2015</td><td class="debt-s">6 346 088</td><td class="return">590 695</td><td class="percents">100 480</td><td class="payment">691 174</td></tr><tr><td class="month">август 2015</td><td class="debt-s">5 755 393</td><td class="return">600 047</td><td class="percents">91 127</td><td class="payment">691 174</td></tr><tr><td class="month">сенятбрь 2015</td><td class="debt-s">5 155 346</td><td class="return">609 548</td><td class="percents">81 626</td><td class="payment">691 174</td></tr><tr><td class="month">октябрь 2015</td><td class="debt-s">4 545 798</td><td class="return">619 199</td><td class="percents">71 975</td><td class="payment">691 174</td></tr><tr><td class="month">ноябрь 2015</td><td class="debt-s">3 926 599</td><td class="return">629 003</td><td class="percents">62 171</td><td class="payment">691 174</td></tr><tr><td class="month">декабрь 2015</td><td class="debt-s">3 297 596</td><td class="return">638 962</td><td class="percents">52 212</td><td class="payment">691 174</td></tr><tr><td class="month">январь 2016</td><td class="debt-s">2 658 633</td><td class="return">649 079</td><td class="percents">42 095</td><td class="payment">691 174</td></tr><tr><td class="month">февраль 2016</td><td class="debt-s">2 009 554</td><td class="return">659 356</td><td class="percents">31 818</td><td class="payment">691 174</td></tr><tr><td class="month">март 2016</td><td class="debt-s">1 350 198</td><td class="return">669 796</td><td class="percents">21 378</td><td class="payment">691 174</td></tr><tr><td class="month">апрель 2016</td><td class="debt-s">680 401</td><td class="return">680 401</td><td class="percents">10 773</td><td class="payment">691 174</td></tr></tbody>
                </table>
                <div class="bottom">
                    <a href="#modal-calculate-result-<?php echo $model->id ?>" class="btn j-calc-result">Посчитать</a>
                </div>
            </div>

        </div>
    </div>
</div>