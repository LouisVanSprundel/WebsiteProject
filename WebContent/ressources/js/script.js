//function changeMain(img) {
//                var main = document.getElementById('main');                
//                main.src = img;
//}

$(document).ready(function() {
    
    
//    
//    $( function() {
//             $( "#slider-range" ).slider({
//                 range: true,
//                 min: 0,
//                 max: 500,
//                 values: [ 75, 300 ],
//                 slide: function( event, ui ) {
//                     $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
//                 }
//             });
//             $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
//                                " - $" + $( "#slider-range" ).slider( "values", 1 ) );
//         } );
 
 /* For the sticky navigation */
 $('.js--lauches').waypoint(function(direction) {
     if (direction == "down") {
         $('nav').addClass('sticky');
     } else {
         $('nav').removeClass('sticky');
     }
 }, {
   offset: '60px;'
 });
 
 
 /* Scroll on buttons */
 $('.js--scroll-to-plans').click(function () {
    $('html, body').animate({scrollTop: $('.js--section-plans').offset().top}, 1000); 
 });
 
 $('.js--scroll-to-home').click(function () {
    $('html, body').animate({scrollTop: $('.js--section-features').offset().top}, 1000); 
 });
 
 
 /* Navigation scroll */
 $(function() {
   $('a[href*=#]:not([href=#])').click(function() {
     if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
       var target = $(this.hash);
       target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
       if (target.length) {
         $('html,body').animate({
           scrollTop: target.offset().top
         }, 1000);
         return false;
       }
     }
   });
 });
 
 
 /* Animations on scroll */
// $('.js--wp-1').waypoint(function(direction) {
//     $('.js--wp-1').addClass('animated fadeIn');
// }, {
//     offset: '50%'
// });
// 
// $('.js--wp-2').waypoint(function(direction) {
//     $('.js--wp-2').addClass('animated fadeInUp');
// }, {
//     offset: '50%'
// });
// 
// $('.js--wp-3').waypoint(function(direction) {
//     $('.js--wp-3').addClass('animated fadeIn');
// }, {
//     offset: '50%'
// });
// 
// $('.js--wp-4').waypoint(function(direction) {
//     $('.js--wp-4').addClass('animated pulse');
// }, {
//     offset: '50%'
// });
 
 
 /* Mobile navigation */
 $('.js--nav-icon').click(function() {
     var nav = $('.js--main-nav');
     var icon = $('.js--nav-icon i');
     
     nav.slideToggle(200);
     
     if (icon.hasClass('ion-navicon-round')) {
         icon.addClass('ion-close-round');
         icon.removeClass('ion-navicon-round');
     } else {
         icon.addClass('ion-navicon-round');
         icon.removeClass('ion-close-round');
     }        
 });
});
//$(document).ready(function() {
//	var form = document.getElementById("submit");
//
//    var number = 0;
// 
//    if (window.File && window.FileList && window.FileReader) {
//        $("#files").on("change", function(e) {
//            var image = e.target.files[0];
//            
//            number += 1; 
//                if (number < 6){ 
//
// 
//                    var fileReader = new FileReader();
//                 
//
//                    fileReader.onload = (function(e) {
//                        var file = e.target;
//                        
//                        $("<span class=\"pip\">" +
//                          "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
//                          "<br/>" +
//                          "</span>").insertAfter("#files");
//                       
//                     
//
//                    });
//                    fileReader.readAsDataURL(image);
//                           
//                    
//                   
//                }else{
//                    alert("You can put not more than 5 images")
//
//                }
//            
//            
//            document.getElementById("submit").addEventListener("click", function () {
//            	
//                var data = new FormData();
//                data.append("data", image);
//
//                var xhr = new XMLHttpRequest();
//                xhr.withCredentials = true;
//
//                xhr.addEventListener("readystatechange", function () {
//                  if (this.readyState === 4) {
//                    console.log(this.responseText);
//                  }
//                });
//
//                xhr.open("POST", "http://localhost:8080/June/admin/add");
//                xhr.setRequestHeader("cache-control", "no-cache");
//                xhr.setRequestHeader("postman-token", "bc6026eb-1191-5f92-8ee5-d3dd77e8680c");
//
//                xhr.send(data);
//
//            
//            	});
//        });
//    } else {
//        alert("Your browser doesn't support to File API")
//    }
//   
//
//});  
