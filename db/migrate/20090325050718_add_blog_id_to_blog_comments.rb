class AddBlogIdToBlogComments < ActiveRecord::Migration
  def self.up
    add_column :blog_comments, :blog_id, :integer
  end

  def self.down
    remove_column :blog_comments, :blog_id
  end
end
