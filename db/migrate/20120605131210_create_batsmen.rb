class CreateBatsmen < ActiveRecord::Migration
  def change
    create_table :batsmen do |t|
      t.integer :player_id
      t.integer :innings
      t.integer :nout
      t.integer :runs
      t.integer :hights
      t.integer :bestf
      t.float :sr
      t.float :ave
      t.integer :hundred
      t.integer :fifty
      t.integer :zero
      t.integer :fours
      t.integer :siz

      t.timestamps
    end
  end
end
