class CreateMoves < ActiveRecord::Migration
  def self.up
    create_table :moves do |t|
      t.integer :game_id
      t.float :x
      t.float :y
      t.float :angle
      t.float :power
      t.integer :attempts
      t.integer :score_differential
      t.integer :max_multiplier
      t.boolean :attempt_failed, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :moves
  end
end
