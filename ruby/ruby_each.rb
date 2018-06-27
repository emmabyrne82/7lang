numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
message = ""
numbers.each{
	|a|
	message = "#{message} #{a}"
	if (a%4 == 0)
		puts message
		message = ""
	end 
}

numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
numbers.each_slice(4).each {
	|a|
	message = ""
	a.each {
		|b|
		message = "#{message} #{b}"
	}
	puts message
}

numbers.each_slice(4)  {|message| puts "didnt have to do all that stuff above! #{message}"}