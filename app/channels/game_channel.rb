# frozen_string_literal: true

class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_#{params[:game_id]}"
  end

  def unsubscribed
    Game.find(params[:game_id]).update(end_game: true)
  end
end
