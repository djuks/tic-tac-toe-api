# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    user = User.find(params[:id])

    render json: user.to_json
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user.to_json
    else
      render json: user.errors.to_json
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end
end
