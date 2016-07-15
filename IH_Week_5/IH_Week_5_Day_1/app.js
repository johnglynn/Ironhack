$(document).ready(function(){

$('.fade').on('click', function(){
	$('p').fadeToggle('.fade')
});

$('.unicorn').on('click', function(){
	$('p').toggleClass('unicorn')
});



});