$(function(){
    var mfp = false;

    var options = false;
    var content = false;
    var calcModal = null;
    var resultModal = null;
    var descModal = null;





    function calculateCredit(form , options)
    {
        form = $(form);
        var id = form.data('id');
        var commission = options['commission'];
        var ocenka = options['ocenka'];
        var notarius = options['notarius'];
        var gai = options['gai'];
        var polis = options['polis'];
        var fin_risk = options['fin_risk'];
        var sbor_gai = options['sbor_gai'];


        var downPayment = form.find('input[name="sum['+id+']"]:checked').val(), //Первоначальный взнос
            rate = form.find('input[name="procent['+id+']"]:checked').val(), // Процентная ставка
            price = form.find('input[name=price]').val(), // Сумма автомобиля
            time = form.find('input[name="year['+id+']"]:checked').val(), // Срок кредита
            creditSumm, // Сумма кредита
            surcharge = {12: 0.106, 24: 0.113, 36: 12.5}; // процентная надбавка

        downPayment = price*downPayment;
        creditSumm = price - downPayment;
        surcharge = surcharge[time];
        var creditBalance = creditSumm;
        //creditBalance = creditBalance.toFixed(0);

        var rashod_gai = gai*price + sbor_gai;
        var strahovoy_polis = (price*polis*time/12) + (fin_risk*price*3);

        var resultTable = "<table class='table table-bordered table-hover center'>";
        resultTable += "<tr class='gray'>";
        resultTable += "<th> # </th>";
        resultTable += "<th> Дата </th>";
        resultTable += "<th> Остаток кредита </th>";
        resultTable += "<th> осн долг </th>";
        resultTable += "<th> проценты</th>";
        resultTable += "<th> ИТОГО </th>";
        resultTable += "</tr>";



        var nowDate = new Date();
        var nowTime = nowDate.getTime();
        //
        //resultTable += "<tr>";
        //resultTable += "<td> - </td>";
        //resultTable += "<td> "+nowDate.format("dd.mm.yyyy")+" </td>";
        //resultTable += "<td> "+number_format(creditBalance,0,',',' ')+" </td>";
        //resultTable += "<td>  </td>";
        //resultTable += "<td> "+number_format((creditBalance*commission),0,',',' ')+" </td>";
        //resultTable += "<td> "+number_format((creditBalance*commission),0,',',' ')+" </td>";
        //resultTable += "</tr>";

        var tmp = Math.pow((1+rate/12),time);
        var itog = creditSumm*(rate/12*tmp)/(tmp-1);
        itog = round(itog,0);
        var percent,principal;

        var principalSumm = 0,
            percentSumm = creditBalance*commission,
            itogSumm = creditBalance*commission;


        for(i=1; i<=time; i++)
        {
            //var date = new Date(nowTime);

            percent = ( (creditBalance*rate)/12 );

            if(i == time)
            {
                principal = creditBalance; // Основной долг
                itog = principal + percent;
            }
            else
            {
                principal = itog - percent; // Основной долг
            }



            resultTable += "<tr>";
            resultTable += "<td> "+i+" </td>";
            resultTable += "<td> "+nowDate.format("dd.mm.yyyy")+" </td>";
            resultTable += "<td> "+number_format(creditBalance,0,',',' ')+" </td>";
            resultTable += "<td> "+number_format(principal,0,',',' ')+" </td>";
            resultTable += "<td> "+number_format(percent,0,',',' ')+" </td>";
            resultTable += "<td> "+number_format(itog,0,',',' ')+" </td>";
            resultTable += "</tr>";

            principalSumm += principal,
            percentSumm += percent,
            itogSumm += itog;


            creditBalance -= principal;
            nowDate.setMonth( nowDate.getMonth() + 1 );
        }


        resultTable += "<tr class='gray'>";
        resultTable += "<th colspan='3'> ИТОГО </th>";
        resultTable += "<th> "+number_format(principalSumm,0,',',' ')+" </th>";
        resultTable += "<th> "+number_format(percentSumm,0,',',' ')+" </th>";
        resultTable += "<th> "+number_format(itogSumm,0,',',' ')+" </th>";
        resultTable += "</tr>";

        resultTable += "</table>";

        $(resultModal).find('.j-result-content').html(resultTable);



        var moreTable = "<table class='table table-bordered table-hover center'>";
        moreTable += "<tr class='gray'>";
        moreTable += "<td colspan='5'>Первоначальные расходы:</td>";
        moreTable += "</tr>";

        moreTable += "<tr>";
        moreTable += "<td class='left' colspan='4'>Предоплата:</td>";
        moreTable += "<td> " + number_format(downPayment,0,',',' ') + " </td>";
        moreTable += "</tr>";

        moreTable += "<tr>";
        moreTable += "<td class='left' colspan='4'>Независимая оценка:</td>";
        moreTable += "<td> " + number_format(ocenka,0,',',' ') + " </td>";
        moreTable += "</tr>";

        moreTable += "<tr>";
        moreTable += "<td class='left' colspan='4'>Расходы нотариуса:</td>";
        moreTable += "<td> " + number_format(notarius,0,',',' ') + " </td>";
        moreTable += "</tr>";

        moreTable += "<tr>";
        moreTable += "<td class='left' colspan='4'>Расходы в ГАИ:</td>";
        moreTable += "<td> " + number_format(rashod_gai,0,',',' ') + " </td>";
        moreTable += "</tr>";

        moreTable += "<tr>";
        moreTable += "<td class='left' colspan='4'>Страховой полис:</td>";
        moreTable += "<td> " + number_format(strahovoy_polis,0,',',' ') + " </td>";
        moreTable += "</tr>";

        var itogo = downPayment+ocenka+notarius+rashod_gai+strahovoy_polis;
        var vsego = itogo + itogSumm;

        moreTable += "<tr class='gray'>";
        moreTable += "<td class='left text-lg' colspan='4'>ИТОГО:</td>";
        moreTable += "<td> " + number_format(itogo,0,',',' ') + " </td>";
        moreTable += "</tr>";

        moreTable += "<tr class='gray'>";
        moreTable += "<td class='left text-lg' colspan='4'>ВСЕГО:</td>";
        moreTable += "<td> " + number_format(vsego,0,',',' ') + " </td>";
        moreTable += "</tr>";


        moreTable += "</table>";


        $(descModal).find('.j-desc-content').html(moreTable);


        return resultTable;

    }


    $('.open-calculate-modal').click(function(e){
        e.preventDefault();
        var itemId = $(this).data('itemid');
        calcModal = "#modal-calculate-"+itemId;
        resultModal = "#modal-calculate-result-"+itemId;
        descModal = "#modal-calculate-desc-"+itemId;

        //customRadio("year["+itemId+"]");
        //customRadio("sum["+itemId+"]");
        //customRadio("procent["+itemId+"]");

        options = {
            items: [
                {
                    src: calcModal,
                    type: 'inline'
                },
                {
                    src: resultModal,
                    type: 'inline'
                },
                {
                    src: descModal,
                    type: 'inline'
                }
            ],
            type: 'inline',
            gallery: {
                enabled: true,
                arrows: false
            },
            removalDelay: 0,
            mainClass: 'mfp-fade j-calc'
        };

        $.magnificPopup.open(options, 0);
        content = $(".mfp-fade.j-calc .mfp-content");
        calculateCredit(calcModal, CalcOptions);

    });


    $('.j-calc-result-open').click(function(e){
        e.preventDefault();

        var data = calculateCredit(calcModal, CalcOptions);

        var magnificPopup = $.magnificPopup.instance;

        content.css({left: '0px'});
        content.animate({left: '-1300px'},200,'linear',function(){
            setTimeout(function(){
                magnificPopup.goTo(1);

                content.css({left: '1000px'});
                content.animate({left: '0px'},200,'linear');
            },200);

        });
        return false;
    });


    $('.j-goto-calc').click(function(e){
        e.preventDefault();

        var magnificPopup = $.magnificPopup.instance;

        content.css({left: '0px'});
        content.animate({left: '1300px'},200,'linear',function(){
            setTimeout(function(){
                magnificPopup.goTo(0);

                content.css({left: '-1000px'});
                content.animate({left: '0px'},200,'linear');
            },200);

        });
        return false;
    });


    $('.j-goto-desc').click(function(e){
        e.preventDefault();

        var magnificPopup = $.magnificPopup.instance;

        content.css({left: '0px'});
        content.animate({left: '-1300px'},200,'linear',function(){
            setTimeout(function(){
                magnificPopup.goTo(2);

                content.css({left: '1000px'});
                content.animate({left: '0px'},200,'linear');
            },200);

        });
        return false;
    });


    $('.j-goto-result').click(function(e){
        e.preventDefault();

        var magnificPopup = $.magnificPopup.instance;

        content.css({left: '0px'});
        content.animate({left: '1300px'},200,'linear',function(){
            setTimeout(function(){
                magnificPopup.goTo(1);

                content.css({left: '-1000px'});
                content.animate({left: '0px'},200,'linear');
            },200);

        });
        return false;
    });



});



function round(number,decimal)
{
    var r = parseFloat(number);
    var exp10=Math.pow(10,decimal);// приводим к правильному множителю
    r=Math.round(r*exp10)/exp10;// округляем до необходимого числа знаков после запятой
    return r;
}

function number_format( number, decimals, dec_point, thousands_sep )
{
    var i, j, kw, kd, km;

    if( isNaN(decimals = Math.abs(decimals)) ){
        decimals = 2;
    }

    if( dec_point == undefined ){
        dec_point = ",";
    }

    if( thousands_sep == undefined ){
        thousands_sep = ".";
    }

    i = parseInt(number = (+number || 0).toFixed(decimals)) + "";

    if( (j = i.length) > 3 )
    {
        j = j % 3;
    }
    else
    {
        j = 0;
    }

    km = (j ? i.substr(0, j) + thousands_sep : "");

    kw = i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands_sep);

    kd = (decimals ? dec_point + Math.abs(number - i).toFixed(decimals).replace(/-/, 0).slice(2) : "");

    return km + kw + kd;
}
