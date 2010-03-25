/*
 * This file serves to ensure that the footer is at the bottom of the page.
 */
$(function() {

	var footer = $("#footer")
	var body = $("#body")

	var offset = footer.offset().top + footer.outerHeight()
	var difference = body.outerHeight() - offset

	if(difference > 0) {
		var current = Number($("#content").css("padding-bottom").replace(/\D*/,''))

		$("#content").css({"padding-bottom": String(current + difference) + "px"})
	}
})
