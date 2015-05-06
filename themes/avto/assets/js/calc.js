$(function(){
    var mfp = false;

    var options = false;
    //var calc_modal = $('.open-calculate-modal').magnificPopup({
    //    type:'inline',
    //    midClick: true,
    //    removalDelay: 300,
    //    mainClass: 'mfp-fade j-calc',
    //    callbacks: {
    //        beforeOpen: function() {
    //            console.log('Start of popup initialization');
    //        },
    //        updateStatus: function(data) {
    //            console.log('Status changed', data);
    //            // "data" is an object that has two properties:
    //            // "data.status" - current status type, can be "loading", "error", "ready"
    //            // "data.text" - text that will be displayed (e.g. "Loading...")
    //            // you may modify this properties to change current status or its text dynamically
    //        },
    //        change: function() {
    //
    //            console.log(this.items);
    //
    //            if( this.content.hasClass('j-calc-content') )
    //            {
    //                this.content.css({left: '-600px'});
    //                this.content.animate({left: '0px'},500);
    //            }
    //            else
    //            {
    //                this.content.css({right: '-600px'});
    //                this.content.animate({right: '0px'},500);
    //            }
    //        }
    //    }
    //});
    //
    //
    //var result_modal = $('.j-calc-result-open').magnificPopup({
    //    type:'inline',
    //    midClick: true,
    //    removalDelay: 300,
    //    mainClass: 'mfp-fade j-calc-result'
    //});


    $('.open-calculate-modal').click(function(e){
        e.preventDefault();
        var itemId = $(this).data('itemid');
        var calcModal = "#modal-calculate-"+itemId;
        var resultModal = "#modal-calculate-result-"+itemId;

        options = {
            items: [
                {
                    src: calcModal,
                    type: 'inline'
                },
                {
                    src: resultModal,
                    type: 'inline'
                }
            ],
            type: 'inline',
            gallery: {
                enabled: true
            },
            removalDelay: 0,
            mainClass: 'mfp-fade j-calc'

            // You may add options here, they're exactly the same as for $.fn.magnificPopup call
            // Note that some settings that rely on click event (like disableOn or midClick) will not work here
        };

        mfp = $('.open-calculate-modal');
        //mfp.magnificPopup(options).magnificPopup('open',0);
        mfp = $.magnificPopup.open(options, 0);

    });


    $('.j-calc-result-open').click(function(e){
        e.preventDefault();

        var magnificPopup = $.magnificPopup.instance;
        //mfp.magnificPopup('goTo', 1);
        //$.magnificPopup.close();
        //magnificPopup.next();
        //console.log(magnificPopup.items);
        console.log(mfp);
        mfp.next();

    });




    //$(".j-calc-result-open").click(function(e){
    //    e.preventDefault();
    //    var src = $(this).attr('href');
    //    calc_modal.magnificPopup('close');
    //
    //    var result_modal = $(this).magnificPopup({
    //        type:'inline',
    //        midClick: true,
    //        removalDelay: 300,
    //        mainClass: 'mfp-fade j-calc'
    //    });
    //    var magnificPopup = $.magnificPopup.instance;
    //    magnificPopup.close();
    //    magnificPopup.next(); // go to next item
    //});


});
