# frozen_string_literal: true

class Hero < ApplicationRecord
  belongs_to :team, required: false
end
