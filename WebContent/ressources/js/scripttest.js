
$(document).ready(function() {
	var form = document.getElementById("submit");
	var validatedFiles = [];
    var number = 0;
 
    if (window.File && window.FileList && window.FileReader) {
        $("#files").on("change", function(e) {
        	var image = e.target.files[0];
        	validatedFiles.push(image);
            number += 1; 
                if (number < 6){ 

 
                    var fileReader = new FileReader();
                 
                    console.log("blocbloc");
                    fileReader.onload = (function(e) {
                       var file = e.target;
                        
                        $("<span class=\"pip\">" +
                                "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
                                "<br/><span class=\"remove\">Remove image</span>" +
                                "</span>").insertAfter("#files");
                              $(".remove").click(function(){
                                $(this).parent(".pip").remove();
                                
                                
                              });
                     

                    });
                    fileReader.readAsDataURL(image);
                           
                    
                   
                }else{
                    alert("You can put not more than 5 images")

                }
            
            
            document.getElementById("submit").addEventListener("click", function () {
            	image = e.target.files[0];
                var data = new FormData();
                data.append("data", image);

                var xhr = new XMLHttpRequest();
                xhr.withCredentials = true;

                xhr.addEventListener("readystatechange", function () {
                  if (this.readyState === 4) {
                    console.log(this.responseText);
                  }
                });

                xhr.open("POST", "http://localhost:8080/June/login");
                xhr.setRequestHeader("cache-control", "no-cache");
                xhr.setRequestHeader("postman-token", "bc6026eb-1191-5f92-8ee5-d3dd77e8680c");

                xhr.send(data);

            
            	});
        });
    } else {
        alert("Your browser doesn't support to File API")
    }
   

});  


//$(document).ready(function() {
//	var form = document.getElementById("submit");
//
//    var number = 0;
// 
//    if (window.File && window.FileList && window.FileReader) {
//        $("#files").on("change", function(e) {
//            var files = e.target.files;
//            number += files.length; 
//            for (var i = 0; i < files.length; i++) {
//
//                if (number < 6){ 
//
//                    var f = files[i];
//                    var fileReader = new FileReader();
//                 
//                    
//                    fileReader.onload = (function(e) {
//                        var file = e.target;
//                        
//                        $("<span class=\"pip\">" +
//                          "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
//                          "<br/><span class=\"remove\">Remove image</span>" +
//                          "</span>").insertAfter("#files");
//                       
//                        $(".remove").click(function(){
//                            $(this).parent(".pip").remove();
//                            files.splice(i, 1);
//                            
//                        });
//
//                    });
//                    fileReader.readAsDataURL(f);
//                           
//                    
//                   
//                }else{
//                    alert("You can put not more than 5 images")
//
//                }
//            }
//            
//            document.getElementById("submit").addEventListener("click", function () {
//            	
//                var data = new FormData();
//                data.append("data", f);
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
//                xhr.open("POST", "http://localhost:8080/June/login");
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

//
//var data = new FormData();
//data.append("data", "mms_20170221_223934.jpg");
//console.log(data);
//var xhr = new XMLHttpRequest();
//xhr.withCredentials = true;
//
//xhr.addEventListener("readystatechange", function () {
//  if (this.readyState === 4) {
//    console.log(this.responseText);
//  }
//});
//
//xhr.open("POST", "http://localhost:8080/June/login");
//xhr.setRequestHeader("cache-control", "no-cache");
//xhr.setRequestHeader("postman-token", "bc6026eb-1191-5f92-8ee5-d3dd77e8680c");
//
//xhr.send(data);


//var data = new FormData();
//data.append("test", "blocbloc");
//
//var xhr = new XMLHttpRequest();
//xhr.withCredentials = true;
//
//xhr.addEventListener("readystatechange", function () {
//  if (this.readyState === 4) {
//    console.log(this.responseText);
//  }
//});
//
//xhr.open("POST", "http://localhost:8080/June/login");
//xhr.setRequestHeader("cache-control", "no-cache");
//xhr.setRequestHeader("postman-token", "a903648c-5852-f6a9-8ac4-d9757040bd99");
//
//xhr.send(data);

