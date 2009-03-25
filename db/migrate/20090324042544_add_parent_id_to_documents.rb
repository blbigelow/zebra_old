class AddParentIdToDocuments < ActiveRecord::Migration
  def self.up
    add_column :discussions, :parent_id, :integer
  end

  def self.down
    remove_column :discussions, :parent_id
  end
end
