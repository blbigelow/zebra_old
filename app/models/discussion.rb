class Discussion < ActiveRecord::Base
  has_many :discussions, :class_name => "Discussion", :foreign_key => "parent_id"
  acts_as_ferret
  acts_as_taggable
end
