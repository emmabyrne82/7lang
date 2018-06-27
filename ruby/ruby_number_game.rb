puts "Hello there! Guess a number between 1 and 9."
randNum = rand(10)  	

guessNum = 100
while randNum != guessNum
	guessNum = gets.to_i
	if guessNum < randNum
    	puts "Try a higher number"
    else 
    	if guessNum > randNum
    		puts "Try a lower number"
    	end
    end	  
end
puts "well done you guessed correctly!"