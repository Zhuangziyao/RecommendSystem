/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2017-06-26 02:45:30
 * @version $Id$
 */

$(init)

function init(){

	function SHOW(obj){  
        obj.css('display','block');  
    }  
  
    function HIDE(obj){  
        obj.css('display','none');  
    }  
/*  
    function TOGGLE(e){  
        var obj = $(e);  
        if(obj.css('display') === 'none'){  
            obj.css('display', 'block'); 
        }  
        else if(obj.css('display') === 'block'){ 
           	obj.css('display', 'none');  
        } 
    }  
*/
    function tNavControl(){  
        var w = window.document.body.offsetWidth;  
        var objBtn = $('#top-btnlist');  
        var objNor = $('#normalTNav');  
        var objUnNor = $('#top-btnlist-msg');  
        if(w <= 768){//小屏幕  
            SHOW(objBtn);  
            SHOW(objUnNor);  
            HIDE(objNor)  
        }  
        else{  
            HIDE(objBtn);  
            HIDE(objUnNor);  
            HIDE($('.maker'));
            SHOW(objNor);  
        }  
    }  
  
    $('#top-btnlist').on('click', function(){   

        //TOGGLE('.maker');
        
        if($('#top-btnlist-msg').css("right") === "-539.6px") {
            $('#top-btnlist-msg').animate({
                right: '0'
            });
            $('.maker').fadeIn();
        }
        else{
            $('#top-btnlist-msg').animate({
                right: '-539.6px'
            });
            $('.maker').fadeOut();
        }
        return false;  
    })   

    $('body').on('click', function(){  

        $('.maker').fadeOut();

        $('#top-btnlist-msg').animate({
            right: '-539.6px'
        });
        //HIDE($('#top-btnlist-msg'));
    })  
  
    tNavControl();      
  
    window.onresize = function(){
    	tNavControl(); 
    }
}