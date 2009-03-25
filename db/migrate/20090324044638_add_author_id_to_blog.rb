class AddAuthorIdToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :author_id, :integer
  end

  def self.down
    remove_column :blogs, :author_id
  end
end
