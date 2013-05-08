class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :stem

      t.timestamps
    end
    add_index :words, :stem
  end

  def self.down
    drop_table :words
  end
end
