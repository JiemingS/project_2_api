class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :damage_type
      t.integer :damage
      t.integer :toughness
      t.integer :crowd_control
      t.integer :mobility
      t.integer :attack_range

      t.timestamps
    end
  end
end
