
//$(function(){
// if($(".taskcheck").prop("checked")) {
//   $(this).parent().css('color','#f00');
// }
//})
$(function(){



 $("input[type=checkbox]").click(function(){
   if($(this).prop("checked")){
　　　　$(this).parents("tr").addClass("sumi")
   }else{
 　　　$(this).parents("tr").removeClass("sumi")
   }
 });

})
