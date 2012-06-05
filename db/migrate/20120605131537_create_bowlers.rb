class CreateBowlers < ActiveRecord::Migration
  def change
    create_table :bowlers do |t|
      t.integer :innings
      t.integer :player_id
      t.float :overs
      t.integer :madian
      t.integer :runs
      t.float :BBI
      t.float :ave
      t.float :econ
      t.integer :fourhaul
      t.integer :fivehaul
      t.float :sr
      t.timestamps
    end
  end
end
