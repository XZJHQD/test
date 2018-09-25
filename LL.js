window.onload = function(argument) {
    
var div = document.getElementsByTagName('div')[0];
  
  var a = false
  
  div.onclick = function(argument) {
     
   if (a = !a) {
    
        div.classList.add("scla");
    
        document.getElementsByTagName('h1')[0].classList.add('show');
 
        document.getElementsByTagName("div")[1].style.display = "none";
 
       } else {
        
    div.classList.remove("scla");
      
      document.getElementsByTagName('h1')[0].classList.remove('show');
    
        document.getElementsByTagName("div")[1].style.display = "block"
   
     }
 
   }

}