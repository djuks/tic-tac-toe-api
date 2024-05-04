# frozen_string_literal: true

class PlayersController < ApplicationController
  def show
    player = Player.find(params[:id])

    render json: player.to_json
  end

  def create
    player = Player.new(player_params)

    if player.save
      render json: player.to_json
    else
      render json: player.errors.to_json
    end
  end

  private

  def player_params
    params.require(:player).permit(:nickname)
  end
end
