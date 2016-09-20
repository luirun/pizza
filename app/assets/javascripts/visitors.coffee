###
Variable "to" is set to null by default to make it global, when we call poll function timeout is cleared and set to 8 seconds -> 1 sec = 1000.
###

@SliderPoller =
	to: null
	poll: ->
		clearTimeout @to
		@to = setTimeout @request, 8000
		
	request: ->
		$.get($('.my-slider').data('url'))

		
jQuery ->
	SliderPoller.poll();
