var map,
    canvas,
    markers = [],
    image;

$(function() {
    $('#search-form').hide();
    $('body').keypress(showSearch)
    $('body').click(hideSearch);
});

function display_map () {
    var mapOptions = {
        center: new google.maps.LatLng("40.73","-73.93"),
        zoom: 13,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    canvas = $('#map-canvas')[0];
    map = new google.maps.Map(canvas, mapOptions)
}

function add_marker(lat, long, title){
  image = image || new google.maps.MarkerImage('../assets/underground.png')
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title:title, animation: google.maps.Animation.DROP, icon: image});
  markers.push(marker);
}

function showSearch (key) {
  if(key.keyCode === 124){
      hideSearch();
      $('#search-form input').blur();
  }
  else if(key.keyCode === 126){
    image = new google.maps.MarkerImage('../assets/chyld.jpeg')
  }
  else{
      $('#search-form').show();
      $('#search-form input').focus();
  }
}

function hideSearch(){
  $('#search-form').hide();
  $('#search-form input').blur();
}

//Below from http://stackoverflow.com/questions/1544739/google-maps-api-v3-how-to-remove-all-markers
function clearOverlays() {
  for (var i = 0; i < markers.length; i++ ) {
    markers[i].setMap(null);
  }
}