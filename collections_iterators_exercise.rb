#Collections and Iterators Exercise: Class 03

#Here's Problem One. 
data = []
100.times do |user_num|
data.push(
	{ user:
		{
			id: user_num , 
			email: "user_#{user_num}@gmail.com" , 
			username: "user_#{user_num}" , 
			age: rand(18..75)
		},
		tweets: [
				"I'm user#{user_num}",
				"This is my second tweet!"	
			]
	}

)
end

#And here's Problem 2. Commented Out so I can do the rest of the lab

=begin
puts "============================\nuser_#{data[2][:user][:id]}'s tweets\n============================"
data[2][:tweets].each do |user_tweet|
puts "tweet: #{user_tweet}"
end
=end


#Problem 3 Incoming! Just the reverse structure.
data.reverse!

#Just made the following line of code to make sure reverse! was working. It was! Hooray! You can uncomment it to check!
#puts data[2]

#Here's Problem 4, with the find_index instance method stuff!

=begin
user_id = 2
user_index = data.find_index {|where_is_user| where_is_user [:user][:id] == user_id}
puts "User_#{user_id} is at index #{user_index}"
=end

#This is me mucking about trying to get user input to work. So you can specifically
#as what user ID they're specifically looking for. It worked! Also commented out to
#continue with the lab.

=begin
puts "What User ID Number Would you Like to Look Up?"
user_id = gets.chomp.to_i
user_index = data.find_index {|where_is_user| where_is_user [:user][:id] == user_id}
puts "User_#{user_id} is at index #{user_index}"
=end

#OK. Onto Problem 5. DEEP BREATH Searching for Stuff
#I can't quite get this to work. Looking at other people's code, it looks like I'm on the
#right track.
puts "SEARCH RESULTS\nusername               age\n========               ==="
data[:user][:age].each do |age_under|
	if data[:age] < 25
			puts "#{age_under[:user][:username]}               #{age_under[:user][:age]}"               
	end
end

#Was having trouble getting the above code working. So I skipped to the second part of
#problem 5. MISTAKE! Couldn't figure it out!
=begin
data.select {|age_select| age_select <= 25}.each
puts "#{age_select[:username]}"               "#{age_select[:age]}"
=end