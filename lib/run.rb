class Run
  attr_reader :command,
              :target_color_pattern,
              :correct_elements,
              :correct_positions,
              :guess_count,
              :printer


  def initialize(printer = Printer.new)
    @command              = ""
    @long_target = "rrrrggggbbbbyyyy".split("").shuffle
    @target_color_pattern = @long_target[0..3]
    @correct_elements     = 0
    @correct_positions    = 0
    @guess_count          = 0
    @printer              = printer
  end

  def play
    clear_screen
    printer.show_opening
    until win? || exit? || lose?
      printer.guess_request
      @command = gets.strip.split('')
      if @command.length != 4
        printer.command_length_error
      end
      process_color_guess_elements
      process_color_guess_position
      printer.show_correct_positions(correct_positions)
      printer.show_correct_elements(correct_elements)
      printer.show_guess_count(guess_count)
      printer.show_target(target_color_pattern)
    end
  end

  def process_color_guess_elements
    @guess_count += 1
    @correct_elements = 0
    @command.each { |color| @correct_elements += 1 if target_color_pattern.include?(color) }
  end

  def process_color_guess_position
    @correct_positions = 0

    if @command[0] == @target_color_pattern[0]
      @correct_positions += 1
    end
    if @command[1] == @target_color_pattern[1]
      @correct_positions += 1
    end
    if @command[2] == @target_color_pattern[2]
      @correct_positions += 1
    end
    if @command[3] == @target_color_pattern[3]
      @correct_positions += 1
    end
  end

  def exit?
    command == ["q"] || command == ["q","u","i","t"]
  end

  def lose?
    if guess_count == 10
      puts "HAHAHAHA YOU LOST!!!!!!!"
    end
    guess_count == 10
  end

  def win?
    if command[0..3] == target_color_pattern[0..3]
      puts "GOOD FUCKING JOB MAN!!!!, YOU WON!!!!!!!"
    end
    command[0..3] == target_color_pattern[0..3]
  end

  def clear_screen
    print "\e[2J\e[f"
  end
end