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


#This method displays the greeting method
def say_greeting
	greeting = "\t\t Welcome to the Virtual Crazy 8 Ball game!"
	 + "\n\n\n\n\n\n\n\n\n\nPress Enter to " 
	 		"continue. \n\n: "
	 print greeting
	end



	end
#This method displays the 8 balls primary query 
def get_question
	question = "Type your question and then press enter. \n\n: "
	print question
end

#This method displays the 8 ball answers
def tell_fortune(randomAnswer)
	print "The answer is " + randomAnswer + ". \n\n: "
end

#This method displays the 8 ball's closing message
def say_goodby
	goodbye = "Thanks for playing the game!\n\n"
	puts goodbye
end

end

#Main Script Logic -----------------------------------------------------------------------------------------

Console_Screen = Screen.new #Initialize new screen object
Eight_Ball = Ball.new #Initialize a new Ball object

Console_Screen.cls #Clear the display area

Eight_Ball.say_greeting #Call the method responsible for greeting the player

Console_Screen.pause #Pause game



