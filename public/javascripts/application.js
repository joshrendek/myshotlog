// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//
//
jQuery.fn.elementlocation = function() {
  var curleft = 0;
  var curtop = 0;
 
  var obj = this;
 
  do {
	curleft += obj.attr('offsetLeft');
	curtop += obj.attr('offsetTop');
 
	obj = obj.offsetParent();
  } while ( obj.attr('tagName') != 'BODY' );
 
 
  return ( {x:curleft, y:curtop} );
};

var shotGroups = new Array();
var i = 1;

$(document).ready( function() {
  $("#clickable-target").click( function( eventObj ) {
	var location = $("#clickable-target").elementlocation();
	var x = eventObj.pageX - location.x - 5;
	var y = eventObj.pageY - location.y - 9;
        $('#target').append("<span style='position: absolute; font-weight: bold; margin-top: " + y + "px; margin-left: " + x + "px; '>" + i + "</span>")
	$("#x-coordinate").text( x );
	$("#y-coordinate").text( y );
        shotGroups[i-1] = new Array(i, x, y);
        //alert($.toJSON(shotGroups));
        $('#target_groups').val( $.toJSON(shotGroups) );
        i++;
    });
 
});
 
