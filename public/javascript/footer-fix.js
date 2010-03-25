/*
 * This file serves to ensure that the footer is at the bottom of the page.
 */
$(function() {

	var footer = $("#footer")
	var body = $("#body")

	var offset = footer.offset().top + footer.outerHeight()
	var difference = body.outerHeight() - offset

	if(difference > 0) {
		var current = $("#content").css("padding-bottom")

		$("#content").css({"padding-bottom": "" + (current + difference) + "px"})
	}
})
