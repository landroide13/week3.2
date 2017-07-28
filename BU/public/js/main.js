
$(".toHide").click(function(){  
   $(".toHide").hide()
   $(".newform").removeClass("hidden")
   console.log("Click add list")
 })
   
   
$(".cancel").click(function(){
     $(".newform").addClass("hidden")
     $(".toHide").show()
      console.log("Click Cancel")
   }) 
 

$("body").click(function(e){
  console.log(e.target)
  //$(".newform").toggleClass("hidden")
})


