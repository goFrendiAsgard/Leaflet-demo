<?php
	// NOTE :
	//   alaska using EPSG:2964, while WGS 84 using EPSG:4326, just change it to WGS84
    // CHANGE SHP TO MySQL :	
    //   ogr2ogr -f "MySQL" MySQL:"[database_name],user=root,host=localhost,password=[root_password]" -lco engine=MYISAM airports.shp -s_srs EPSG:2964 -t_srs EPSG:4326	
	// google map:
	//   http://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Ccolor:red%7Clabel:C%7C40.718217,-73.998284&sensor=false
	// how to backup:
	//	 mysqldump -u root -p[root_password] [database_name] > dumpfilename.sql
	// how to restore:
	//   mysql -u root -p[root_password] [database_name] < dumpfilename.sql    
	$map_longitude = 60.293165;
    $map_latitude = -158.959803;
    $map_zoom = 5;
    $map_height = "500px";
    $map_width = "100%";
    $map_base = array(
    		"base" => array(
    				"url" => "http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png",
    				"max_zoom" => 18,
    			),    	
    	);
    $map_geojson = array(
    		"airports" => array(
    				"url" => "airport_geojson.php"
    			),
    	);
?>

<head>
	<link rel="stylesheet" type="text/css" href="leaflet/dist/leaflet.css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="leaflet/dist/leaflet.ie.css" /><![endif]-->		
	<style type="text/css">
	    .leaflet-container img{
	        z-index : -1;
	    }
	    #change_feature{
	        z-index:3;
	    }
	</style>
	<script type="text/javascript" src="leaflet/dist/leaflet.js"></script>	
	<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){			

			var cloudmadeAttribution = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade';
			cloudmadeOptions = {maxZoom: 18, attribution: cloudmadeAttribution};
			cloudmadeNormalUrl = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png';
			cloudmadeMinimalUrl = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/22677/256/{z}/{x}/{y}.png';
			cloudmadeMidnightUrl = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/999/256/{z}/{x}/{y}.png';
			cloudmadeMotorWaysUrl = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/46561/256/{z}/{x}/{y}.png';

			var normal = new L.TileLayer(cloudmadeNormalUrl, cloudmadeOptions),
			    minimal = new L.TileLayer(cloudmadeMinimalUrl, cloudmadeOptions),
				midnightCommander = new L.TileLayer(cloudmadeMidnightUrl, cloudmadeOptions),
				motorways = new L.TileLayer(cloudmadeMotorWaysUrl, cloudmadeOptions);
		
			var map_latitude = <?php echo $map_latitude;?>;
			var map_longitude = <?php echo $map_longitude;?>;
			var map_zoom = <?php echo $map_zoom;?>;
			var map = new L.Map('map', {
				center: new L.LatLng(map_longitude, map_latitude), zoom: map_zoom, layers: [normal]
			});
		
			var baseMaps = {
				"Normal" : normal,
				"Minimal": minimal,
				"Night View": midnightCommander,
				"Motor Ways": motorways
			};

			var geojson_layers = new Array();
			var geojson_features = new Array();
			var geojson_labels = new Array();
			var overlayMaps = new Object();
			var i = 0; 
			<?php foreach($map_geojson as $label=>$layer){ ?>
				geojson_labels[i] = '<?php echo $label;?>';
				$.ajax({
					async : false,
					url : '<?php echo $layer['url']; ?>',
					type : 'GET',
					dataType : 'json',
					success : function(response){
							geojson_features[i] = response;
							/*
							geojson_features[i] = {
						            "type": "FeatureCollection",
						            "features": [
						            { "type": "Feature", "properties": { "id": 1, "nama": "Wood-tikchik" }, "geometry": { "type": "Point", "coordinates": [ -157.956803, 60.293165 ] } }
						            ,
						            { "type": "Feature", "properties": { "id": 2, "nama": "Lake Clark National Park" }, "geometry": { "type": "Point", "coordinates": [ -155.524763, 60.564959 ] } }
						            ,
						            { "type": "Feature", "properties": { "id": 3, "nama": "Bethel" }, "geometry": { "type": "Point", "coordinates": [ -161.747541, 60.792412 ] } }

						            ]
						        };
						    */
							geojson_layers[i] = new L.GeoJSON(geojson_features[i]);
						}
				});
				overlayMaps[geojson_labels[i]] = geojson_layers[i];
				i++;							
			<?php } ?>
	
			layersControl = new L.Control.Layers(baseMaps, overlayMaps);
	
			map.addControl(layersControl);
		
		});    
	</script>
</head>
<body>
	<div id="map" style="height: <?php echo $map_height; ?>; width: <?php echo $map_width; ?>"></div>
</body>
