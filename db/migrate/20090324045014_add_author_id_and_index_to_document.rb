class AddAuthorIdAndIndexToDocument < ActiveRecord::Migration
  def self.up
    add_column :documents, :user_id, :integer
    add_column :discussions, :user_id, :integer
    add_column :blogs, :user_id, :integer
  end

  def self.down
    remove_column :blogs, :user_id
    remove_column :discussions, :user_id
    remove_column :documents, :user_id
  end
end
