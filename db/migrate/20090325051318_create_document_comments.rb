class CreateDocumentComments < ActiveRecord::Migration
  def self.up
    create_table :document_comments, :force => true do |t|
      t.text :body
      t.integer :document_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :document_comments
  end
end
