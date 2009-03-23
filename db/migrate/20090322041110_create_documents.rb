class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.integer :version
      t.string :title
      t.text :body
      t.integer :rating
      t.boolean :allow_comments

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
