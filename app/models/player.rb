# frozen_string_literal: true

class Player < ApplicationRecord
  validates :nickname, presence: true
end
