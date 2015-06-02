jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

ready = ->

	$ ->
	  $('#posts').imagesLoaded ->
	    $('#posts').masonry
	      itemSelector: '.box'
	      isFitWidth: true


$(document).ready(ready)
$(document).on('page:load', ready)


