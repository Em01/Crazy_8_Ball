#A game to demonstrate how to work with variables and random numbers to create a fortune telling game that provides randomly selected answers to player questions.

#Define custom classes....................................

#Define a class representing the console window
class Screen

	def cls #Define a method that clears the area
		puts("\n" * 25) #Scroll screen 25 times
		puts "\a" #Beep
	end

	def pause #Define a method that pauses the display area
		STDIN.gets #Execute STDIN class's get method to pause script until player presses enter
	end

end