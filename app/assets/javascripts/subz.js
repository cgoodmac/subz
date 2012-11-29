var map,
	canvas;

$(function() {
	function display_map () {
		var mapOptions = {
			center: new google.maps.LatLng("40.636375333000046","-73.9946119999999"),
			zoom: 11,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}

		canvas = $('#map-canvas')[0];
		map = new google.maps.Map(canvas, mapOptions)
	}

	display_map();
	$('.sidebar').click(hideSidebar)
});

	function hideSidebar () {
		$('.sidebar').toggleClass('hidden');
	}