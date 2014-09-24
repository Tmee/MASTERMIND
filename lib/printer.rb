class Printer

  def welcome
    puts "  Welcome to MASTERMIND!"
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
    puts "             :::::::   Enter your color sequence guess   :::::::"
  end

  def show_instructions
    puts "Insctructions"
    puts "-This is a brief summary of how to play MASTERMIND"
    puts "-Another thing"
  end

  def show_guess_count
    puts "You have taken #{@guess_count} times."
  end

  def show_win
    puts "Congrats!! You beat MASTERMIND!"
  end

  def show_opening
    puts [
      "                           MASTERMIND has now begun!
       I have generated a beginner sequence with four elements made up of:
                     (r)ed, (g)reen, (b)lue, and (y)ellow.
                    Use (q)uit at any time to end the game."
   ]
  end

  def show_results
    show_correct_positions(correct_positions);
    show_correct_elements(correct_elements);
    show_guess_count(guess_count);
    show_target(target_color_pattern)
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