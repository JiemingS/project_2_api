# frozen_string_literal: true

class Member < ApplicationRecord
  belongs_to :team, inverse_of: :members
  belongs_to :hero, inverse_of: :members
end
