/* Funções */

$(document).ready(function(){
	$("#nomeDaBanda").keyup(function(){
		$("#nomeDaBanda").val($(this).val().toUpperCase());
	});
	
	$("#genero").keyup(function(){
		$("#genero").val($(this).val().toUpperCase());
	});
	
	$("#email").keyup(function(){
		$("#email").val($(this).val().toLowerCase());
	});
	
	$("#telefone").keypress(function(){
		if($("#telefone").val().length == 0){
			$("#telefone").val($("#telefone").val() + "(" );			
		} else if ($("#telefone").val().length == 3){
			$("#telefone").val($(this).val() + ")");
		} else if ($("#telefone").val().length == 9){
			$("#telefone").val($(this).val() + ".");
		}
	});
});