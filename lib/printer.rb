class Printer

  def welcome
    puts "Welcome to MASTERMIND!".rjust(24)
  end

  def show_command_instructions
    puts [
      "What would you like to do?
      (p)lay
      (i)nstructions
      (q)uit"
    ]
  end

  def invalid_command
    puts "I'm not sure what that command means...try again"
  end

  def command_request
    print "Enter command: "
  end

  def guess_request
    puts ":::::::   Enter your color sequence guess   :::::::".rjust(65)
  end

  def show_instructions
    clear_screen
    puts "Insctructions:\n\n-A color sequence will be generated out of 4 colors\n\n-Repeated colors are allowed\n\n-The object of MASTERMIND is to guess the target color sequence with in 10 attempts\n\n-For each guess made you will be told how many colors are correct, as well as how many positions are correct\n\n"
  end

  def show_guess_count
    puts "You have taken #{@guess_count} times."
  end

  def win_game(guess_count)
    clear_screen
    puts [
      "\n██╗    ██╗██╗███╗   ██╗███╗   ██╗███████╗██████╗
██║    ██║██║████╗  ██║████╗  ██║██╔════╝██╔══██╗
██║ █╗ ██║██║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██║███╗██║██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
╚███╔███╔╝██║██║ ╚████║██║ ╚████║███████╗██║  ██║
 ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝"
]
    puts "Congrats!! You beat MASTERMIND!".rjust(39)
    if guess_count <= 7
    puts "It only took you #{guess_count} tries!\n\n".rjust(38)
    else
    puts "Cutting it kinda' close, you think?".rjust(41)
    puts "Finished in #{guess_count} guesses\n\n".rjust(35)
    end
  end

  def lost_game
    puts ["██╗  ██╗ █████╗ ██╗  ██╗ █████╗     ██╗      ██████╗ ███████╗███████╗██████╗ ██╗
██║  ██║██╔══██╗██║  ██║██╔══██╗    ██║     ██╔═══██╗██╔════╝██╔════╝██╔══██╗██║
███████║███████║███████║███████║    ██║     ██║   ██║███████╗█████╗  ██████╔╝██║
██╔══██║██╔══██║██╔══██║██╔══██║    ██║     ██║   ██║╚════██║██╔══╝  ██╔══██╗╚═╝
██║  ██║██║  ██║██║  ██║██║  ██║    ███████╗╚██████╔╝███████║███████╗██║  ██║██╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝\n"]
    puts "\nYou lost the game. SUCKS.\n\n".rjust(40)
  end

  def show_opening
    puts [
      "                           MASTERMIND has now begun!
       I have generated a beginner sequence with four elements made up of:
                     (r)ed, (g)reen, (b)lue, and (y)ellow.
                  Use (q)uit at any time to leave MASTERMIND.
                           Use (h)int if you give up."
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
    puts "Error".rjust(37)

    puts "****** Please enter the first letter of 4 colors, without spaces. ******\n\n"
  end

  def clear_screen
    print "\e[2J\e[f"
  end
end