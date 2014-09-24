# class GuessMachine
#   attr_reader :guess, :target, :printer

#   def initialize(guess, target)
#     @guess             = guess
#     @target            = target
#     @guess_count       = 0
#     @correct_elements  = 0
#     @correct_positions = 0
#     @printer = Printer.new
#   end

#   def process_color_guess_elements
#     @guess_count += 1
#     @correct_elements = 0

#     if @target.include?(@guess[0])
#       @correct_elements += 1
#     end
#     if @target.include?(@guess[1])
#       @correct_elements += 1
#     end
#     if @target.include?(@guess[2])
#       @correct_elements += 1
#     end
#     if @target.include?(@guess[3])
#       @correct_elements += 1
#     end
#   end

#   def process_color_guess_position
#     @correct_positions = 0

#     if @guess[0] == @target[0]
#       @correct_positions += 1
#     end
#     if @guess[1] == @target[1]
#       @correct_positions += 1
#     end
#     if @guess[2] == @target[2]
#       @correct_positions += 1
#     end
#     if @guess[3] == @target[3]
#       @correct_positions += 1
#     end
#   end
# end