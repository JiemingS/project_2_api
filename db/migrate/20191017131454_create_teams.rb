# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :create_date
      t.string :comment

      t.timestamps
    end
  end
end
