<?php     
    include_once("geophp/geoPHP.inc");
    include_once("connection.php");
    
    // CHANGE MySQL TO JSON :
    $SQL = "SELECT cat, names as name, astext(shape) as shape FROM lakes";
    $result = mysql_query($SQL, $connection);
    $features = array();    
    while($row = mysql_fetch_array($result)){
        $geom = geoPHP::load($row["shape"],'wkt');
        $json = $geom->out('json');
        $features[] = array( 
        			"type" => "Feature",
        			"properties" => array(
		        			"cat" => $row["cat"],
		        			"name" => $row["name"], 
	        				"style" => array(
	        					"color"=> "#004070",
	        					"weight"=> 1,
	        					"opacity"=> 0.9
        					),
        					"popupContent"=> $row["name"],
	        			),
        			"geometry" => json_decode($json),
	        );
    }
    $feature_collection = array(
    		"type" => "FeatureCollection",
    		"features" => $features,
    	);
    echo json_encode($feature_collection, true);
    
?>
