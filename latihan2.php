<!DOCTYPE html>
<html>
  <head>
    <title>maribelajarcoding.com</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
       #map {
        height: 80%;
        width: 80%;
         margin: 0 auto 0 auto;
      }
      html, body {
        height: 100%;
      }
    </style>
  </head>
  <body>
    <h2 align="center">Wisata Semarang</h2>
    <div id="map"></div>
    <div align="center">
      <a href="https://www.maribelajarcoding.com" target="_blank">maribelajarcoding.com</a>
    </div>
     <script>

        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(-7.0016372,110.4428114),
          zoom: 12
        });
        var infoWindow = new google.maps.InfoWindow;

          downloadUrl('http://localhost/maps/data-xml.php', function(data) {

            var markers=JSON.parse(data.responseText);

            markers.forEach(function(element) {          
                var id_pariwisata = element.id_pariwisata;
                var nama_pariwisata = element.nama_pariwisata;
                var alamat = element.alamat;
                var point = new google.maps.LatLng(
                    parseFloat(element.lat),
                    parseFloat(element.long));

                var infowincontent = document.createElement('div');
                var strong = document.createElement('strong');
                strong.textContent = nama_pariwisata
                infowincontent.appendChild(strong);
                infowincontent.appendChild(document.createElement('br'));

                var text = document.createElement('text');
                text.textContent = alamat
                infowincontent.appendChild(text);
                var marker = new google.maps.Marker({
                  map: map,
                  position: point
                });
                marker.addListener('click', function() {
                  infoWindow.setContent(infowincontent);
                  infoWindow.open(map, marker);
                });
            });
            
          });
        }
      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }
      //https://maps.googleapis.com/maps/api/js?key=AIzaSyBjwGz1f3bqtK-uQxaVGD640smPPmMt7n8&callback=initMap
      function doNothing() {}
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjwGz1f3bqtK-uQxaVGD640smPPmMt7n8&callback=initMap"
    async defer></script>
  </body>
</html>