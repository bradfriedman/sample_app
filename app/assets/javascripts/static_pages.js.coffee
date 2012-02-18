# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	micropostForm.setupForm()

micropostForm =
	setupForm: ->
		$('#chars').text("0/140")
		$('#micropost_content').keyup ->
			$('#chars').text(String($('#micropost_content').val().length) + "/140")
			if $('#micropost_content').val().length > 140
				$('#chars').css("color", "red")
			else
				$('#chars').css("color", "black")
			true
		true