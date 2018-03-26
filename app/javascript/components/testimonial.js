$(document).ready(function(){
  pagenum = 1;
  function AutoRotate() {
   var myele = null;
   var allElements = document.getElementsByTagName('label');
   for (var i = 0, n = allElements.length; i < n; i++) {
     var myfor = allElements[i].getAttribute('for');
     if ((myfor !== null) && (myfor == ('slide_2_' + pagenum))) {
       allElements[i].click();
       break;
     }
   }
   if (pagenum == 4) {
     pagenum = 1;
   } else {
     pagenum++;
   }
 }
 setInterval(AutoRotate, 3600);
});
