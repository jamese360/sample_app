class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.references :page
      t.references :word
      t.integer :position

      #t.timestamps
    end
    add_index :locations, :page_id
    add_index :locations, :word_id
    add_index :locations, [:word_id, :page_id]
  end

  def self.down
    drop_table :locations
  end
end
