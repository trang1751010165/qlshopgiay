// JavaScript Document
  
  //-------------------------- HÀM SLIDE SHOW --------------------------------------------------

 //khai báo biến slideIndex đại diện cho slide hiện tại
 var slideIndex;
 // KHai bào hàm hiển thị slide
 function showSlides() {
     "use strict";
     var i;
     var slides = document.getElementsByClassName("showoff");
     var dots = document.getElementsByClassName("dot");
    
         for (i = 0; i < slides.length; i++) {
                 slides[i].style.display = "none"; 
                 slides[slideIndex].style.display = "block"; 
     }
     for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(" active", "");
     }
     //slides[slideIndex].style.display = "block";  
     //dots[slideIndex].className += " active";
     //chuyển đến slide tiếp theo
     slideIndex++;
     //nếu đang ở slide cuối cùng thì chuyển về slide đầu
     if (slideIndex > slides.length - 1) {
       slideIndex = 0;
     }    
     //tự động chuyển đổi slide sau 3,5s
     setTimeout(showSlides,3550);
     
 }
 //mặc định hiển thị slide đầu tiên 
 showSlides(slideIndex = 0);
//showSlides();
 function currentSlide(n) {
     "use strict";
   showSlides(slideIndex = n);
 }
 //-------------=--
 window.onscroll= function(){
     "use strict";
     scrollFunction();
 };
 function scrollFunction() {
     "use strict";
     if(document.scrollTop >20 || document.documentElement.scrollTop >20 ){
         document.getElementById("mytnt").style.display="block";
     }
     else{
         document.getElementById("mytnt").style.display="none";
     }
}
// cuộn lên đầu trang khi người dùng nhấn vào nút top
   function topFunction(){
       "use strict";
       document.body.scrollTop=0 // cho Safart
       document.documentElement.scrollTop=0; // cho chrome
   }
   
   
    