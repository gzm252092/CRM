$(window).ready(function(){ 
    $(".faq .item .title").click(function(){
     //   var text = $(this).parent('.item').find('.text');
        var text = $(this).parent().parent().parent().parent().next().find('.text');
     
        if(text.is(':visible')){ 
            text.fadeOut();
           
            }
        else{
   
            text.fadeIn();      
            }          
    });
      if((".text").length > 0){ 	
           $(".text").hide();
       };
    $("#faqSearch").click(function(){
        var keyword = $("#faqSearchKeyword").val();
        
        if(keyword.length >= 3){
            $(".faq").find('.text').fadeOut();
            $("#faqSearchResult").html("");
            $(".faq").removeHighlight();
            
            var items = $(".faq .item:containsi('"+keyword+"')").find('.text');
            items.highlight(keyword);
            items.fadeIn();            
            $("#faqSearchResult").html(items.length+" matches");            
            
        }else
            $("#faqSearchResult").html("<span style='color: red;'>Minimum 3 chars</span>");
         
    });
    
    $("#faqListController a").click(function(){
        var open = $(this).attr('href');
        $(open).find('.text').fadeIn();
    });
    
    $("#faqOpenAll").click(function(){
        $(".faq").find('.text').fadeIn();
    });
    
    $("#faqCloseAll").click(function(){
        $(".faq").find('.text').fadeOut();
    });
    
    $("#faqRemoveHighlights").click(function(){
        $(".faq").removeHighlight();
    });
    
 });   
    

