jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

ready = ->

	$ ->
	  $('#posts').imagesLoaded ->
	    $('#posts').masonry
	      itemSelector: '.box'
	      isFitWidth: true

	$ ->
	  $('#blogs').imagesLoaded ->
	    $('#blogs').masonry
	      itemSelector: '.box'
	      isFitWidth: true
	      isRTL: true
	      isOriginTop: false

$(document).ready(ready)
$(document).on('page:load', ready) 
