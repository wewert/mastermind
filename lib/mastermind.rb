require 'pry'

class Mastermind
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
        else
						puts "-"*100
						puts "You have not selected an option that works. Please try again.\n\n"
            welcome_message
       end
		end
end		
				def guess_matching(now)
					results = {:match => [], :index => [] }
					guess_matching.each_with_index do |k,v|
						if exact_match? << true
						elsif near_match?(k)
							results[:index] << true
						end
				end
				results
			end
				
				def play(user_input)
					colors_key = %w{ r b g y}.shuffle
					#match_this = colors_key.each_with_index { |k,v| "#{k} #{v}" }

					puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?"
					guess = gets.chomp.downcase
					if guess.length == 4
						#start timer here
						#start turn +1
						guess.split('')
						#play
					elsif 
						guess == "q" || guess == "quit"
						puts "#"*130
						puts "Bye for now"
						exit(0)
				  else
						puts "You need four letters"
						play(user_input)
					end
      	end

				def game_playing
					puts ""
				end

mastermind = Mastermind.new
mastermind.welcome_message
