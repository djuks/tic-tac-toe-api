# frozen_string_literal: true

class GamesController < ApplicationController
  def show
    game = Game.find(params['id'])

    render json: game.to_json
  end

  def create
    game = Game.where(player_2: nil, end_game: false).first

    if game
      game.update(player_2: nickname_params['nickname'], last_played: nickname_params['nickname'])
    else
      game = Game.create(player_1: nickname_params['nickname'])
    end

    render json: game.to_json
  end

  def update
    game = Game.find(params['id'])

    game.update(game_params)

    game.update(message: game.game_logic, end_game: true) if game.game_logic

    render json: game.to_json
  end

  def end_game
    game = Game.find(params['id'])

    game.update(end_game: true)

    render json: game.to_json
  end

  private

  def nickname_params
    params.require(:game).permit(:nickname)
  end

  def game_params
    params.require(:game).permit(:last_played, :field_1, :field_2, :field_3,
                                 :field_4, :field_5, :field_6, :field_7, :field_8,
                                 :field_9)
  end
end
