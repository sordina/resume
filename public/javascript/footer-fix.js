/*
 * This file serves to ensure that the footer is at the bottom of the page.
 */
$(function() {

	var footer = $("#footer")
	var body = $("#body")

	var offset = footer.offset().top + footer.outerHeight()
	var difference = body.outerHeight() - offset

	alert(difference)

	if(difference > 0) {
		$("#content").css({"padding-bottom": "+"+difference+"px"})
	}
})
