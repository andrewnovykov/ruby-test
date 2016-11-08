
def get_time(timestamp1, timestamp2 )

	
	time1 = Time.at(timestamp2)
	time2 = Time.at(timestamp1)

	day = time1.day - time2.day 
	hour = time1.hour - time2.hour 
	min = time1.min - time2.min 
	sec = time1.sec - time2.sec



	if sec == 60
		min = min + 1
		sec = 0
	else
		sec 
	end

	if sec < 0
		min = min - 1
		sec = 60 + time1.sec - time2.sec
	else
		sec 
	end


	if min == 60
		hour = hour + 1
		min = 0
	else
		min 
	end


	if min < 0
		hour = hour - 1
		min = 60 + time1.min - time2.min
	else
		min
	end


	if hour == 24
		day = day + 1
		hour = 0
	else
		hour 
	end

	if hour < 0
		day = day - 1
		hour = 24 + time1.hour - time2.hour 
	else
		hour
	end

	if day < 0
		hour = hour + 24 
	else
		day
	end



	if sec > 0
		puts day.to_s + " day " + hour.to_s + " hour and " + min.to_s + " min "  + sec.to_s + " seconds"
	else 
		puts day.to_s + " day " + hour.to_s + " hour " + min.to_s + " min "
	end

end

get_time(1478013331, 1478104977)

puts "-------- test ---------"

puts Time.at(1478013331)
puts Time.now

time = Time.now 

get_time(1478013331, time)









