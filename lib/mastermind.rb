require 'pry'

class Mastermind

	def initialize
		@start_clock = Time.now
		@time_played	
		@key = color_generator
		#@hint_position = hint_on_positions
		#@hint_color = hint_on_matching_colors
		@guess_arr
		@guess_counter = 0
	end
	
	def user_input
		
	end

	def guess_arr
		@guess_arr = []
	end
	
	def time_played
		time = Time.now
		time_played = time - @start_clock
		time_played.to_s
	end

	def welcome_message
  	puts "Welcome to MASTERMIND\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
 
    user_input = gets.chomp.downcase
    if user_input == "p" || user_input=="play"
    play(user_input)
    elsif user_input == "i" || user_input=="instructions"
			puts "="*130
			puts "Choose for colors: (r)red, (g)green, (blue), and (yellow), If you match the secret randomly select four colors you win a prize!\n\n"
			puts "Please select (p)lay or (q)uit to move along"
					
			user_input_2 = gets.chomp.downcase
			if user_input_2 == "p" || user_input_2 =="play"
			play(user_input)
			elsif user_input_2 == "q" || user_input_2 =="quit"
				puts "*"*130
				puts "Thanks for checking out the game. You will now exit."
				exit(0)
			end
      elsif user_input == "q" || user_input=="quit"
				puts "^"*130
				puts "Well thanks anyways, you will now exit the game."
				exit(0)
			elsif user_input == "h" || user_input=="hint"
				puts "$"*130
				puts "You have #{@hint_position} positions correct and #{@hint_color} correct color matches."
      else
				puts "-"*100
				puts "You have not selected an option that works. Please try again.\n\n"
        welcome_message
      end
		end
	end

	def play(user_input)
		puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
		guess = gets.chomp.downcase
		start_clock = Time.now
		if guess.length == 4
		@guess_arr = guess.split('')
		@guess_counter += 1
		game_playing(guess_arr)
		elsif 
		guess == "q" || guess == "quit"
			puts "#"*130
			puts "Bye for now"
			exit(0)
		else
			puts "!"*130
			puts "You need four letters"
			play(user_input)
		end
  end

	def color_generator
		%w(r r r r r b b b b b g g g g g y y y y y).shuffle.last(4)
	end

#	def hint_on_positions
#		color_generator.each_with_index do |element, index|
#			counter += 1 if element == @guess_arr[index]
#			end
#			counter
#	end

#	def hint_on_matching_colors
#		color_hint = @key & @guess_arr
#	end


	def game_playing(guess_arr)
		if @guess_arr == @key
			puts "You've correctly matched up all colors and positions. Too bad you now have dysentery! Your playing time was #{time_played} and you guessed #{guess_counter} times."
		else
			puts "@"*130
			puts "For the love of Pete that's the wrong combination. Keep at it. Try again... But if you need a hint, just type in (h)int"
			play(user_input)
		end
	end

mastermind = Mastermind.new
mastermind.welcome_message