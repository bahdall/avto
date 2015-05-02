$(function(){

 if ($('html').hasClass('lt-ie9') || $('html').hasClass('lt-ie8'))
    {
        $(".main_search").addClass("form_ie8");
        $(".main_search input").addClass("input-text input_text"); 
    }else
    { 
        $("#styled-select").addClass("styled-select");
        $(".main_search input").addClass("input-text input_text");
    }  
        
   $(".input_text").focus(function(){
     
     $(this).css({"background-color":"#fff","border":"1px solid #ffa726"});
   
   });
   
    $(".main_search > .form_group > input").blur(function(){
            
        if($.trim($(this).val()) == "")
        {
            $(this).css({"background-color":"#cfd8dc","border":"0"});
            $("#"+$(this).attr("name")).css({"display":"none"});
        }
    })
   
   $(".input_text").keypress(function(){
      $("#"+$(this).attr("name")).css({"display":"block"});
   })
   
   $("#from").click(function(){
    $(this).hide();
    $("input[name*='from']").val("");
    $("input[name*='from']").css({"background-color":"#cfd8dc","border":"0"});
   })
   $("#prior").click(function(){
    $(this).hide();
    $("input[name*='prior']").val("");
    $("input[name*='prior']").css({"background-color":"#cfd8dc","border":"0"});
   })
   
   $(".input_").blur(function(){
    
     if($.trim($(this).val()) != "")
        {
            $(this).css({"border":"1px solid #ffa726","background":"#fff"});
        }else
        {
          $(this).css({"border":"0","background":"#eceff1"});  
        }
   })
   
});

/*------------------RADIO------------------*/

  function customRadio(radioName){
        var radioButton = $('input[name="'+ radioName +'"]');
        $(radioButton).each(function(){
            $(this).wrap( "<span class='custom-radio'></span>" );
            if($(this).is(':checked')){
                $(this).parent().addClass("selected");
            }
        });
        $(radioButton).click(function(){
            if($(this).is(':checked')){
                $(this).parent().addClass("selected");
            }
            $(radioButton).not(this).each(function(){
                $(this).parent().removeClass("selected");
            });
        });
    }
    $(document).ready(function (){
        customRadio("year");
        customRadio("sum");
        
    
    
    
    
    /*------------------Detal Tabs------------------*/
    
    
       $(".tabs-menu a").click(function(event) {
        event.preventDefault();
        $(this).parent().addClass("current");
        $(this).parent().siblings().removeClass("current");
        var tab = $(this).attr("href");
        $(".tab-content").not(tab).css("display", "none");
        $(tab).fadeIn();
    });





    
   
});


function applyCategorySorter(el)
{
    window.location = $(el).val();
}
