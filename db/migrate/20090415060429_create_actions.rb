class CreateActions < ActiveRecord::Migration
  def self.up
    create_table :actions do |t|
      t.integer :user_id
      t.string :controller, :null => false
      t.string :action
      t.integer :object_id
      t.string :session_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
