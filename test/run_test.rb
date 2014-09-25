gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Run
   def play
    # clear_screen
    # printer.show_opening
    # until win? || exit? || lose?
      # printer.guess_request
      @command = gets.strip.split('')
      # invalid_guess
      process_color_guess_position
      # process_color_guess_elements
      # printer.show_correct_positions(correct_positions)
      # printer.show_correct_elements(correct_elements)
      # printer.show_guess_count(guess_count)
      # printer.show_target(target_color_pattern)
      # process_turn
  end
end
require_relative '../.lib/run.rb'


class RunTest < Minitest::Test


  def test_process_positions
    class Run
      def play
        @command = ['q']
      end
    end

    assert_equal exit, Game.new.play

    # @command = ['r','b','g','y']
    # @target_color_pattern = ['r','b','g','y']
    # assert_equal 4, game.process_color_guess_positions

  def test_process_elements

  end


end