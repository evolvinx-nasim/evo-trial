class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :email
      t.string :password
      t.date :birth_date
      t.string :unique_id
      t.timestamps
    end
    add_index :users,:login, :unique => true
    add_index :users,:unique_id, :unique => true
  end
end
