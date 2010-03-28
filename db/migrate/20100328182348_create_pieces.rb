class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.integer :move_id
      t.float :x
      t.float :y
      t.float :radius
      t.integer :count

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
