# frozen_string_literal: true

class AddheroIdToHeros < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :hero_id, :integer
  end
end
