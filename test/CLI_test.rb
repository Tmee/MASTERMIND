gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CLI
  def fetch
    gets.chomp
  end
end

class Run
  attr_reader :fetcher

  def initialize(fetcher_type = CLI)
    @fetcher = fetcher_type.new
  end

  def play
    unless fetcher.fetch == "quit"
      puts "Still Going"
    end

    return "done"
  end
end

class GameTest < Minitest::Test
  class FakeFetcher
    def fetch
      "quit"
    end
  end

  def test_it_exits
    game = Run.new(FakeFetcher)
    assert_equal "done", game.play
  end
end