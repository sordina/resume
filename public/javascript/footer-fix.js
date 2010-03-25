/*
 * This file serves to ensure that the footer is at the bottom of the page.
 */
$(function() {

	var footer = $("#footer")
	var body = $("#body")

	var offset = footer.offset().top + footer.outerHeight()
	var difference = body.outerHeight() - offset

	if(difference > 0) {
		var current_string = $("#content").css("padding-bottom")
		var current = Number(current_string.replace('px',''))
		var padding_string = String(current + difference) + "px"

		$("#content").css({"padding-bottom": padding_string})
	}
})
