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
	greeting = "\t\t Welcome to the Virtual Crazy 8 Ball game!" + 
	"\n\n\n\n\n\n\n\n\n\nPress Enter to " + 
			"continue. \n\n: "
	 print greeting
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
def say_goodbye
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

answer = "" #Initialize variable that is used to control games firsy loop
#loop until the player enters y or n and do not accept any other input

until answer == "y" || answer == "n"

	Console_Screen.cls #clear the screen

	#Prompt the player for permission to begin the game
	print "Would you like to have your fortune predicted? (y/n)\n\n: "

	answer = STDIN.gets #Collect the player's response
	answer.chop! #Remove any extra characters appended to the string

end

#Analyze players response
if answer == "n" #See if player chose not to play

Console_Screen.cls 

puts "Perhaps another time. \n\n"

else #The player chose to play

#Initialize variable used to control the games primary loop
gameOver = "N"

#Loop until player quits
until gameOver == "Yes"

	Console_Screen.cls #Clears display area

	#Call method responsible for generating an answer
	Eight_Ball.get_fortune

	Console_Screen.pause

	Console_Screen.cls 

	#Call method responsible for telling 8 ball's answer
	Eight_Ball.tell_fortune $prediction

	Console_Screen.pause 

	Console_Screen.cls 
	print "Press Enter to ask another question or q to quit. \n\n: "

	answer = STDIN.gets 
	answer.chop!

	if answer == "q"
		gameOver == "Yes"
end
end
end



