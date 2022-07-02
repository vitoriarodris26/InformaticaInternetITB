$(document).ready(function(){
    $("#notificationLink").click(function(){
        $("#container_notificacao").fadeToggle(300);
        $("#numero_notificacao").fadeOut("slow");
        return false;
    });

    //Document Click
    $(document).click(function(){
        $("#container_notificacao").hide();
    });

    //Popup Click
    $("#numero_notificacao").click(function(){
        return false
    });

});

$(document).ready(function() {
	$('#subir').click(function(){
		$('html, body').animate({scrollTop:0}, 'slow');
		return false;
	});
});