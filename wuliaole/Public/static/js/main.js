// JavaScript Document


$(function() {
	$('#iphonedown').hover(function() {
		/* Stuff to do when the mouse enters the element */
		$('#iphonedown').attr('src','images/39.png');
		$('#iphonedown').addClass('shadow');
	}, function() {
		/* Stuff to do when the mouse leaves the element */
		$('#iphonedown').removeClass('shadow');
		$('#iphonedown').attr('src','images/36.png');
	});

	$('#androiddown').hover(function() {
		/* Stuff to do when the mouse enters the element */
		$('#androiddown').addClass('shadow');
		$('#androiddown').attr('src','images/40.png');
	}, function() {
		/* Stuff to do when the mouse leaves the element */
		$('#androiddown').removeClass('shadow');
		$('#androiddown').attr('src','images/37.png');
	});

	$('#erweimadown').hover(function() {
		/* Stuff to do when the mouse enters the element */
		$('#erweimadown').addClass('shadow');
		$('#erweimadown').attr('src','images/41.png');
	}, function() {
		/* Stuff to do when the mouse leaves the element */
		$('#erweimadown').removeClass('shadow');
		$('#erweimadown').attr('src','images/38.png');
	});
});

