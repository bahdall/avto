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
   
   
   
   $(".item").hover(
    
    function(){
     $(this).find(".info");
    },
    function(){
     $(this).find(".info");
    })
   
});


