require 'pry'

class Mastermind
    def welcome_message
        puts "Welcome to MASTERMIND\n\n"
        puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

        user_input = gets.chomp.downcase
        if user_input == "p"
            play
        elsif user_input == "i"
             instructions
        elsif user_input == "q"
            quit
        else 
            puts "You have not selected an option that works. Please try agian.\n\n"
            welcome_message
        end
        #binding.pry
    end
end

mastermind = Mastermind.new
mastermind.welcome_message