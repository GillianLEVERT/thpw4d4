require 'bundler'
Bundler.require



require_relative 'lib/board_case.rb'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require_relative 'lib/board.rb'

def perfom
    game = Game.new
    game.turn
    while  game.again?
        game.turn
    end
    game.result
end

perfom
