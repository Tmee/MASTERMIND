class Printer

  def welcome
    puts "Welcome to MASTERMIND!".rjust(36)
  end

  def show_command_instructions
    puts "What would you like to do?".rjust(38)
    puts "(p)lay".rjust(28)
    puts "(i)nstructions".rjust(36)
    puts "(q)uit".rjust(28)
  end

  def invalid_command
    puts "I'm not sure what that command means...try again".rjust(50)
  end

  def command_request
    print "Enter command: "
  end

  def guess_request
    puts "             :::::::   Enter your color sequence guess   :::::::"
  end

  def show_instructions
    print "\e[2J\e[f"
    puts "Instructions:\n\n"
    puts "-A color sequence will be generated using a set of colors\n\n"
    puts "-You will be given 10 guesses to find the correct color sequence\n\n"
    puts "-You will be told the number of correct colors as well as the number of correct positions for each guess\n\n"
  end

  def show_guess_count
    puts "You have taken #{@guess_count} times."
  end

  def win_game
    puts [
      '██╗    ██╗██╗███╗   ██╗███╗   ██╗███████╗██████╗
██║    ██║██║████╗  ██║████╗  ██║██╔════╝██╔══██╗
██║ █╗ ██║██║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██║███╗██║██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
╚███╔███╔╝██║██║ ╚████║██║ ╚████║███████╗██║  ██║
 ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
                                                 ']

    puts "Congrats!! You beat MASTERMIND!".rjust(40)
  end

  def lost_game
    puts "You lost the game."
  end

  def show_opening
    puts [
      "                           MASTERMIND has now begun!
       I have generated a beginner sequence with four elements made up of:
                     (r)ed, (g)reen, (b)lue, and (y)ellow.
                  Use (q)uit at any time to leave MASTERMIND."
   ]
  end

  def show_correct_positions(correct_positions)
    puts "Number of correct positions: #{correct_positions}"
  end

  def show_correct_elements(correct_elements)
    puts "Number of correct elements:  #{correct_elements}"
  end

  def show_guess_count(guess_count)
    puts "You have guessed #{guess_count} times."
  end

  def show_target(target_color_pattern)
    puts "Target pattern :::   #{target_color_pattern}   :::"
  end

  def command_length_error
    puts "****** Please enter the first letter of 4 colors, without spaces. ******"
  end
end