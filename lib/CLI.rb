class CLI
  attr_reader :printer, :command

  def initialize
    @command = ''.downcase
    @printer = Printer.new
  end

  def begin
    printer.welcome
    until done?
      printer.show_command_instructions
      printer.command_request
      @command = gets.strip
      process_first_command
    end
  end


  def process_first_command
    case
    when play?
      game = Run.new(printer)
      game.play
    when instructions?
      printer.show_instructions
    when done?
      puts "Thanks for playing!"
    else
      printer.invalid_command
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def done?
    command == "q" || command == "quit"
  end
end