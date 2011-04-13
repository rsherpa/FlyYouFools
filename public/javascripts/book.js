function initialize() {
    var latlng = new google.maps.LatLng(39.3682, 4.9218);
    var myOptions = {
        zoom: 2,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        mapTypeControl: false,
        maxZoom: 10,
        minZoom: 2,
        overviewMapControl: false,
        streetViewControl: false
    };

    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    google.maps.event.addListener(map, 'zoom_changed', function() {
        alert("Zoom changed");
    });
}

window.onload = initialize;
