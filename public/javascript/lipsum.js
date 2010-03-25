$(function() {
	function add_text(element, text) {
		var body = $("#body")
		console.log([element.offset().top, element.outerHeight(), body.outerHeight()])

		element.css({opacity: 0.01})

		while(text[0] && element.offset().top + element.outerHeight() < body.outerHeight()) {
			element.append(text.pop() + " ")
		}

		element.animate({opacity: 1.0}, 15000)
	}

	jQuery.get('text/lipsum.txt', function(lipsum) {
		var paras = lipsum.split(/\n\n/)

		jQuery.each(['nw','ne','sw','se'], function(index, item){
			var para = $("<p />", {"class": "lipsum", "id": "lipsum_" + item})
			$("#content").append(para)
			add_text(para, paras.pop().split(/\s+/))
		})

		jQuery.each(['l','r'], function(index, item){
			var para = $("<p />", {"class": "lipsum", "id": "lipsum_" + item})
			$("#body").append(para)
			add_text(para, paras.pop().split(/\s+/))
		})
	})
})