$(document).ready(function($) {
	$('.hide').hide();

	$('#update').click(function(e){
		$('.show').hide();
		$('.hide').show();
	})

	$('#save').click(function(e){
		$('.show').show();
		$('.hide').hide();
	})

});