require 'time'

def setDate(date)

	a = Array.new(  ) 

	t = Time.parse(date)

	

	min = t + 60    # Ровно одна минута с момента t.
	hour = t + 3600  # Ровно один час с момента t.
	five_hour = t + 18000  # Ровно 5 часов с момента t.
	half_day = t + 43200 # Ровно 12 часов с момента t.
	day = t + 86400 # Ровно 1 день с момента t.
	five_day = t + 432000 # Ровно 5 день с момента t.



	

	while t < five_day do 

			if t < hour
				
				a << t.strftime("%a, %d %b %y %H:%M:%S")
				t = t + 60 * 15 
				

			elsif t >= hour && t < five_hour
				 
				a << t.strftime("%a, %d %b %y %H:%M:%S")
				t = t + 60 * 30
				
			elsif t >= five_hour && t < half_day
				
				a << t.strftime("%a, %d %b %y %H:%M:%S")
				t = t + 60 * 60 
				
			else t >= half_day && t < five_day

				
				a << t.strftime("%a, %d %b %y %H:%M:%S")
				t = t + 86400 
				
			end

	end

	puts a

end

setDate("Wed, 02 Nov 2016 19:00:00")
