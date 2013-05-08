class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
    add_index :pages, :url
  end

  def self.down
    drop_table :pages
  end
end
