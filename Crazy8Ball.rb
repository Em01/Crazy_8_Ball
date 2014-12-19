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

#Define a class representing the 8 ball
class Ball

	#Define class properties for the 8 ball
	attr_accessor :randomNo, :greeting, :question, :goodbye

	#Define a method to generate random answers
	def get_fortune
		randomNo = 1 + rand(6)
	end

	#Assign an answer based on the random generated number
	case randomNo

	when 1
		$prediction = "yes"
	when 2
		$prediction = "no"
	when 3
		$prediction = "maybe"
	when 4
		$prediction = "hard to tell. Try again"
	when 5
		$prediction = "unlikely"
	when 6
		$prediction = "unknown"
	end
end