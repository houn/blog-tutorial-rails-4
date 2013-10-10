class AddUserIdToArticles < ActiveRecord::Migration
  
  def self.up
    change_table :articles do |t|
      t.integer :user_id, :null => false, :default => 1
    end
  end
       
  def self.down
    remove_column :articles, :user_id
  end
  
end