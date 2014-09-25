class Run
  attr_reader :command,
              :target_color_pattern,
              :correct_elements,
              :correct_positions,
              :guess_count,
              :printer


  def initialize(printer = Printer.new)
    @command              = ""
    @long_target          = "rrrrggggbbbbyyyy".split("").shuffle
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
      invalid_guess
      process_color_guess_position
      process_color_guess_elements
      printer.show_correct_positions(correct_positions)
      printer.show_correct_elements(correct_elements)
      printer.show_guess_count(guess_count)
      printer.show_target(target_color_pattern)
      process_turn
    end
  end

  def process_turn
    case
    when win?
      printer.win_game
    when lose?
      printer.lose_game
    when exit?
      exit


    end
  end

  def process_color_guess_elements
    @guess_count                    += 1
    @correct_elements                = 0

    @command.each_with_index do |color, index|
      if command.count(color) == target_color_pattern.count(color)
        @correct_elements += command.count(color)
      end
      if command.count(color) > target_color_pattern.count(color)
        @correct_elements += target_color_pattern.count(color)
        @command.delete_if {|color,index| color, index = color, index}
      end
      if command.count(color) < target_color_pattern.count(color)
        @correct_elements += command.count(color)
      end
    end
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

  def invalid_guess
    case
    when exit?
      exit
    when @command.length != 4
      puts "Error".rjust(41)
      printer.command_length_error
    end
  end

  def exit?
    command == ["q"] || command == ["q","u","i","t"]
  end

  def lose?
    guess_count == 10
  end

  def win?
    command == target_color_pattern
  end

  def clear_screen
    print "\e[2J\e[f"
  end
end