class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :match
      t.string :image
      t.timestamps
    end
  end
end
