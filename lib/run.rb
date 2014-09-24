class Run
  attr_reader :command,
              :target_color_pattern,
              :correct_elements,
              :correct_positions,
              :guess_count,
              :printer


  def initialize(printer = Printer.new)
    @command              = ""
    @target_color_pattern = "rgby".split("").shuffle
    # @correct_elements     = 0
    # @correct_positions    = 0
    @guess_count          = 0
    @printer              = printer
  end

  def play
    printer.show_opening
    until win? || exit?
      printer.guess_request
      @command = gets.strip.split('')
      case
      when @command = ["q"] || ["q","u","i","t"]
        exit
      else @command.length != 4
        printer.command_length_error
      end
      new_guess = GuessMachine.new(command, target_color_pattern)
      print.results(new_guess)

      #game = GuessMachine.new(@command, @target_color_pattern)

      # process_color_guess_elements
      # process_color_guess_position
      # printer.show_correct_positions(correct_positions)
      # printer.show_correct_elements(correct_elements)
      # printer.show_guess_count(guess_count)
      # printer.show_target(target_color_pattern)
    end
  end

  # def process_color_guess_elements
  #   @guess_count += 1
  #   @correct_elements = 0

  #   if @target_color_pattern.include?(@command[0])
  #     @correct_elements += 1
  #   end
  #   if @target_color_pattern.include?(@command[1])
  #     @correct_elements += 1
  #   end
  #   if @target_color_pattern.include?(@command[2])
  #     @correct_elements += 1
  #   end
  #   if @target_color_pattern.include?(@command[3])
  #     @correct_elements += 1
  #   end
  # end

  # def process_color_guess_position
  #   @correct_positions = 0

  #   if @command[0] == @target_color_pattern[0]
  #     @correct_positions += 1
  #   end
  #   if @command[1] == @target_color_pattern[1]
  #     @correct_positions += 1
  #   end
  #   if @command[2] == @target_color_pattern[2]
  #     @correct_positions += 1
  #   end
  #   if @command[3] == @target_color_pattern[3]
  #     @correct_positions += 1
  #   end
  # end

  def exit?
    command == ["q"] || command == ["q","u","i","t"]
  end

  def win?
    command[0..3] == target_color_pattern[0..3]
  end
end