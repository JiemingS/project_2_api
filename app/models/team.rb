# frozen_string_literal: true

class Team < ApplicationRecord
  belongs_to :user
  has_many :members
  has_many :heros, through: :members
end
