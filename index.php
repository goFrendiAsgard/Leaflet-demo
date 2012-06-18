<?php
	/**
	 * 
	 * NOTE :
	 *   alaska using EPSG:2964, while WGS 84 using EPSG:4326, just change it to WGS84
     * CHANGE SHP TO MySQL :	
     *   ogr2ogr -f "MySQL" MySQL:"[database_name],user=root,host=localhost,password=[root_password]" -lco engine=MYISAM airports.shp -s_srs EPSG:2964 -t_srs EPSG:4326	
	 * how to backup:
	 *	 mysqldump -u root -p[root_password] [database_name] > dumpfilename.sql
	 * how to restore:
	 *   mysql -u root -p[root_password] [database_name] < dumpfilename.sql
	 *   
	 **/

	// map's center
	$map_longitude = 60.293165;
    $map_latitude = -158.959803;
    // map's default zoom level
    $map_zoom = 5;
    // the height & width of the map
    $map_height = "500px";
    $map_width = "100%";
    // the base maps (background maps), taken from cloudmade or google map
    $map_base = array(
    		"Base Map" => array(
    				"type" => "cloudmade",
    				"url" => "http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png",
    				"max_zoom" => 18,
    				"attribution"=>'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    			),  
    		"Minimal Map" => array(
    				"type" => "cloudmade",
    				"url" => "http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/22677/256/{z}/{x}/{y}.png",
    				"max_zoom" => 18,
    				"attribution"=>'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    			),
    		"Midnight Commander"=>array(
    				"type" => "cloudmade",
    				"url" => "http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/999/256/{z}/{x}/{y}.png",
    				"max_zoom" => 18,
    				"attribution"=>'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    			),
    		"Motor Way"=>array(
    				"type" => "cloudmade",
    				"url" => "http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/46561/256/{z}/{x}/{y}.png",
    				"max_zoom" => 18,
    				"attribution"=>'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
    			),
    		"Google Satellite"=>array(
    				"type"=>"google",
    				"map_type"=>"SATELLITE",
    			),
    		"Google Roadmap"=>array(
    				"type"=>"google",
    				"map_type"=>"ROADMAP",
    			),
    		"Google Hybrid"=>array(
    				"type"=>"google",
    				"map_type"=>"HYBRID",
    			),
    	);
    // the geojson features.
    $map_geojson = array(
    		"airports" => array(
    				"url" => "airport_geojson.php",
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
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3.2&sensor=false"></script>	
	<script type="text/javascript" src="google/Google.js"></script>
	<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var shown_layers = new Array();
			
			// render the base maps and default_shown_base_map
			var baseMaps = new Object();
			var i = 0;
			<?php 
				foreach($map_base as $label=>$layer){
					if($layer["type"]=="cloudmade"){ ?>
						var cloudmadeAttribution = '<?php echo $layer["attribution"]; ?>';
						var cloudmadeOptions = {maxZoom: <?php echo $layer['max_zoom'];?>, attribution: cloudmadeAttribution};
						var cloudmadeUrl = '<?php echo $layer['url'];?>';
						baseMaps['<?php echo $label;?>'] = new L.TileLayer(cloudmadeUrl, cloudmadeOptions); 
			<?php			
					}else if($layer["type"]=="google"){ ?>
						map_type = '<?php echo $layer["map_type"];?>';
						baseMaps['<?php echo $label;?>'] = new L.Google(map_type);
			<?php			
					}?> 
					
					if(i==0){
						shown_layers[shown_layers.length] = baseMaps['<?php echo $label;?>'];
					}
					i++;
			<?php 	
				}?>

			

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
						}
				});

				geojson_layers[i] = new L.GeoJSON(geojson_features[i], 
						{
						    pointToLayer: function (latlng) {
						        return new L.CircleMarker(latlng, 
						        		{
								            radius: 8,
								            fillColor: "#ff7800",
								            color: "#000",
								            weight: 1,
								            opacity: 1,
								            fillOpacity: 0.8
								        }
						        );
						    },
						}
			    	);

				geojson_layers[i].on("featureparse", function (e) {
					if (e.properties && e.properties.popupContent) {
				        popupContent = e.properties.popupContent;
				    }else{
					    popupContent = '';
				    }
				    e.layer.bindPopup(popupContent);								
				});
				    	
		    	
				shown_layers[shown_layers.length] = geojson_layers[i];				
				overlayMaps[geojson_labels[i]] = geojson_layers[i];
				i++;							
			<?php } ?>
	
			

			// define map parameter
			var map_latitude = <?php echo $map_latitude;?>;
			var map_longitude = <?php echo $map_longitude;?>;
			var map_zoom = <?php echo $map_zoom;?>;
			var map = new L.Map('map', {
				center: new L.LatLng(map_longitude, map_latitude), zoom: map_zoom,
			});
			// add shown layers to the map
			for(var i=0; i<shown_layers.length; i++){
				map.addLayer(shown_layers[i]);
			}
			
			// this is counter-intuitive, feature-parse is triggered once we add a geojson feature to a geojson layer
			for(var i=0; i<geojson_layers.length; i++){
				geojson_layers[i].addGeoJSON(geojson_features[i]);
			}

			// add layer control, so that user can adjust the visibility of the layers
			layersControl = new L.Control.Layers(baseMaps, overlayMaps);
			map.addControl(layersControl);
		
		});    
	</script>
</head>
<body>
	<div id="map" style="height: <?php echo $map_height; ?>; width: <?php echo $map_width; ?>"></div>
</body>