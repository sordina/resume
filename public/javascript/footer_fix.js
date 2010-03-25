/*
 * This file serves to ensure that the footer is at the bottom of the page.
 */
$(function() {

	var footer = $("#footer")

	var offset = footer.offset().top + footer.outerHeight()
	var difference = body.outerHeight() - offset


	if(difference > 0) {
		#("#content").css({"padding-bottom": "+"+difference+"px"})
	}
})
