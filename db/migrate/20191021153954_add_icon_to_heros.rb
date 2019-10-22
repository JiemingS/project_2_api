class AddIconToHeros < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :icon, :string
  end
end
