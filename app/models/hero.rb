# frozen_string_literal: true

class Hero < ApplicationRecord
  has_many :members
  has_many :teams, through: :members
end
