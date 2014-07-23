
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

$(function () {
    var data = localStorage.getItem("favorite");

    if (data !== null) {
        $("input[name='favorites']").attr("checked", "checked");
    }


});



$("input[name='favorites']").click(function () {

    if ($(this).is(":checked")) {
        localStorage.setItem("favorite", $(this).val());
    } else {
        localStorage.removeItem("favorite");
    }

});
