gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../.lib/run'


class RunTest < Minitest::Test

  def test_process_positions
    game = Run.new(test)
    @command = ['r','b','g','y']
    @target_color_pattern = ['r','b','g','y']
    assert_equal 4, game.process_color_guess_positions
  end

end