# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->	

	hide_time(convert_time($(".time-select-1 select option:selected").text()),convert_time($(".time-select-2 select option:selected").text()))

	hide_day(convert_day($(".day-select-1 select option:selected").text()),convert_day($(".day-select-2 select option:selected").text()))

	$(".time-select-1 select,.time-select-2 select").change ->
		hide_time(convert_time($(".time-select-1 select option:selected").text()),convert_time($(".time-select-2 select option:selected").text()))
		
	$(".day-select-1 select, .day-select-2 select").change ->
		hide_day(convert_day($(".day-select-1 select option:selected").text()),convert_day($(".day-select-2 select option:selected").text()))
		
	$("#mark-all").click ->
		$(".table-init td").addClass("none")
		$(".table-init td").css("background-color", "#344152")
	
	$("#clear-all").click ->
		$(".table-init td").removeClass("none")
		$(".table-init td").css("background-color", "#F9FFFF")	
	
	$("#table-init td").hover(
		-> if $(this).attr("class").indexOf("none") < 0
		 		$(this).css("background-color", "#F0F0F0")
			else
				$(this).css("background-color", "#42526C")
		-> if $(this).attr("class").indexOf("none") < 0
				$(this).css("background-color", "#F9FFFF")
			else
				$(this).css("background-color", "#344152")
	)
	
	$("#table-init td").click ->
		if $(this).attr("class").indexOf("none") < 0
			$(this).addClass("none")
			$(this).css("background-color", "#344152")
		else	
			$(this).removeClass("none")
			$(this).css("background-color", "#F9FFFF")


	
	alert $("td.none").parent().text()


hide_day = (day1, day2) ->
	if day1 <= day2
		for i in [day1 - 1 .. day2 + 1]
			$("td."+i).removeClass("none")
			$("td."+i).css("background-color", "#F9FFFF")
		if day1 isnt 0
			for i in [0.. day1 - 1]
				$("td."+i).addClass("none")
				$("td."+i).css("background-color", "#344152")
		if day2 isnt 7
			for i in [day2+1..7]
				$("td."+i).addClass("none")
				$("td."+i).css("background-color", "#344152")
	else
		for i in [day2 + 1 .. day1 - 1]
			$("td."+i).addClass("none")
			$("td."+i).css("background-color", "#344152")
		for i in [0.. day2]
			$("td."+i).removeClass("none")
			$("td."+i).css("background-color", "#F9FFFF")
		for i in [day1..7]
			$("td."+i).removeClass("none")
			$("td."+i).css("background-color", "#F9FFFF")
			
hide_time = (time1, time2) ->
	for k in [time1 - 1 .. time2 + 1]
		$("tr."+ k).show()
	if time1 isnt 0
		for i in [0..time1 - 1]
			$("tr."+i).hide()
	if time2 isnt 23
		for j in [time2 + 1 .. 23]
			$("tr."+j).hide()


convert_to_binary = (number) ->
	return number.toString(2)
	
convert_to_number = (binary) ->
	return parseInt(binary, 2)

convert_day = (day) ->
	if day is "Sunday"
		return 1
	else if day is "Monday"
		return 2
	else if day is "Tuesday"
		return 3
	else if day is "Wednesday"
		return 4
	else if day is "Thursday"
		return 5
	else if day is "Friday"
		return 6
	else if day is "Saturday"
		return 7
	else
		return "error"

convert_time = (time) ->
	am_pm = time.substring(time.length - 2, time.length)
	t = parseInt(time.substring(0, time.length - 2))
	if time is "12am"
		return 0
	if time is "12pm"
		return 12
	if am_pm is "pm"
		t = t + 12
	return t
	
convert_time_reverse = (time) ->
	if time is 0
		return "12am"
	if time is 12
		return "12pm"
	if time > 12
		time = time - 12
		return String(time) + "pm"
	else
		return String(time) + "am"
		
		
	
	