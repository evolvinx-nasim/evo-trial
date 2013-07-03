class AddPostUniqueId < ActiveRecord::Migration
  def change
    add_column :posts, :unique_id, :string
    add_index :posts, :unique_id, :unique => true
  end
end