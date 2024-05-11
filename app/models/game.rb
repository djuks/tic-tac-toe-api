# frozen_string_literal: true

class Game < ApplicationRecord
  def game_logic
    if field_1 == 'X' && field_2 == 'X' && field_3 == 'X'
      'Player 1 WIN'
    elsif field_1 == 'O' && field_2  == 'O' && field_3  == 'O'
      'Player 2 WIN'
    elsif field_4 == 'X' && field_5  == 'X' && field_6  == 'X'
      'Player 1 WIN'
    elsif field_4 == 'O' && field_5  == 'O' && field_6  == 'O'
      'Player 2 WIN'
    elsif field_7 == 'X' && field_8  == 'X' && field_9  == 'X'
      'Player 1 WIN'
    elsif field_7 == 'O' && field_8  == 'O' && field_9  == 'O'
      'Player 2 WIN'
    elsif field_1 == 'X' && field_4  == 'X' && field_7  == 'X'
      'Player 1 WIN'
    elsif field_1 == 'O' && field_4  == 'O' && field_7  == 'O'
      'Player 2 WIN'
    elsif field_2 == 'X' && field_5  == 'X' && field_8  == 'X'
      'Player 1 WIN'
    elsif field_2 == 'O' && field_5  == 'O' && field_8  == 'O'
      'Player 2 WIN'
    elsif field_3 == 'X' && field_6  == 'X' && field_9  == 'X'
      'Player 1 WIN'
    elsif field_3 == 'O' && field_6  == 'O' && field_7  == 'O'
      'Player 2 WIN'
    elsif field_1 == 'X' && field_5  == 'X' && field_9  == 'X'
      'Player 1 WIN'
    elsif field_1 == 'O' && field_5  == 'O' && field_9  == 'O'
      'Player 2 WIN'
    elsif field_3 == 'X' && field_5  == 'X' && field_7  == 'X'
      'Player 1 WIN'
    elsif field_3 == 'O' && field_5  == 'O' && field_7  == 'O'
      'Player 2 WIN'
    elsif field_1.nil? || field_2.nil? || field_3.nil? || field_4.nil? || field_5.nil? || field_6.nil? || field_7.nil? || field_8.nil? || field_9.nil?
      nil
    else
      'It is TIE!'
    end
  end
end
