# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.onload = function() {
$(".details").css("display", "none");
};
var flag = true;
$('#dd').click(function() {
//This
$('.details').toggle();
$('#dd').html(flag == false ? "Remove incident details" : 'Add incident details')
flag = !flag;
//OR this
$(".details").css("display", flag ? "block" : "none");
});
$(".alert" ).fadeOut(3000);
$(".alert-success" ).fadeOut(3000);
$(".alert-danger" ).fadeOut(3000);
