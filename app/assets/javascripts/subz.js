var map,
	canvas;

$(function() {
	function display_map () {
		var mapOptions = {
			center: new google.maps.LatLng("40.73","-73.93"),
			zoom: 13,
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

function add_marker(lat, long, title){
	console.log("marker should be added");
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title:title});
}