var map;
var clickListener;
var path;
var markersArray = new Array();
function initialize() {
	
  var mapProp = {
    center:new google.maps.LatLng(46.9998691,28.8581766),
    zoom:10,
    mapTypeId:google.maps.MapTypeId.ROADMAP,
    draggableCursor: 'default'
  };
  map=new google.maps.Map(document.getElementById("mapView"),mapProp);
  
}


function loadSelect() {
	var s= document.getElementById("mySelect");
	
	var jsonReq = { data: [] };

    jsonReq.data.push({ 
        "request" : 'getCategories'
    });
    
	var a = $.ajax({
        url : 'com.maps.GoogleMaps',
        type: "POST",
        dataType : 'json',
        data : JSON.stringify(jsonReq),
        success : function(data) {
            console.log("sucessfull sending:")
           var json = data;
            $.each(json.Categories, function(key, val) {
            	s.options[s.options.length]= new Option(val.CategoryName, val.CategoryId);
        });
            
        },
        error : function() {
            console.log('failed');
        }
    });
	
}


function getComboA(sel) {
    if(sel.value>-1){
    	var json = { data: [] };

    		    json.data.push({ 
    		        "request" : 'getMarkers',
    		        "fk"  : sel.value
    		    });
    		    
    	console.log(sel.value);
    	console.log(JSON.stringify(json));
    	
    var a = $.ajax({
        url : 'com.maps.GoogleMaps',
        type: "POST",
        dataType : 'json',
        data : JSON.stringify(json),
        success : function(data) {
            console.log("sucessfull sending:")
            console.log(JSON.stringify(data));     
            
            
            
            //{"Markers":[{"Description":"test","Site":"dfsdf","CategoryId":36,
            //"CategoryName":"marker1","Latitude":5.659999847412109,"IconUrl":"http/",
            //"Longitude":5.550000190734863,"Route":"[[0.5,0.2],[0.5,1.1],[0.5,0.7],[0.5,0.7],[0.5,0.4]]"}]}
            
            var json = data;
            
            $.each(json.Markers, function(key, val) {
            	
            	var myLatlng = new google.maps.LatLng(val.Latitude,val.Longitude);
            	
          	  var marker = new google.maps.Marker({
      		    position: myLatlng,
      		    title: val.Name,
      		    map: map,
      		    draggable: true
      		  });
      	  markersArray.push(marker);
            	    	
        });
            
        },
        error : function() {
            console.log('failed');
        }
    });
    
    }
}

function createRoute() {
	document.getElementsByName("b1")[0].disabled = true;
	map.setOptions({
		draggableCursor: 'crosshair'
		}); 
	
	var polyOptions = {
		    strokeColor: '#000000',
		    strokeOpacity: 1.0,
		    strokeWeight: 3
		  };
		  poly = new google.maps.Polyline(polyOptions);
		  poly.setMap(map);

		  // Add a listener for the click event
		  clickListener = google.maps.event.addListener(map, 'click', addLatLng);
}

function finishRoute() {
	google.maps.event.removeListener(clickListener);
	map.setOptions({
		draggableCursor: 'default'
		}); 
}

function clearOverlays() {
	  for (var i = 0; i < markersArray.length; i++ ) {
	    markersArray[i].setMap(null);
	  }
	  markersArray.length = 0;
	}

function clearMap() {
	document.getElementsByName("b1")[0].disabled = false;
	clearOverlays();
	if(path != null)
	path.clear();
	google.maps.event.removeListener(clickListener);
	map.setOptions({
		draggableCursor: 'default'
		}); 
}

function addMarker() {
	
	clickListener = google.maps.event.addListener(map, 'click',function(event) {
		   placeMarker(event.latLng);

});
}

function placeMarker(location) {
	  var marker = new google.maps.Marker({
		    position: location,
		    title: 'My marker',
		    map: map,
		    title: 'New Marker',
		    draggable: true
		  });
	  markersArray.push(marker);
	  google.maps.event.removeListener(clickListener);
}

function addLatLng(event) {

  path = poly.getPath();

  // Because path is an MVCArray, we can simply append a new coordinate
  // and it will automatically appear.
  path.push(event.latLng);

  // Add a new marker at the new plotted point on the polyline.
  /*
  var marker = new google.maps.Marker({
    position: event.latLng,
    title: '#' + path.getLength(),
    map: map
  });
  */
}

function sendAjax() {
	   var a = $.ajax({
        url : 'com.maps.GoogleMaps',
        type: "POST",
        dataType : 'text',
        data : map.getCenter().toString(),
        success : function(data) {
            console.log("sucessfull sending:")
            console.log(data);
        },
        error : function() {
            console.log('failed');
        }

    });
	   

}

google.maps.event.addDomListener(window, 'load', initialize);
