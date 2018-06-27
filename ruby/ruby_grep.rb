lineNumber = 1;
File.open("jabberwocky.txt").each do |line|
	if (line =~ /(.*)Jabberwock(.*)/)
		puts line
		puts lineNumber
	end
	lineNumber = lineNumber + 1;
end	