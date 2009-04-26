class Blog < ActiveRecord::Base
  has_many :blog_comments, :class_name => "BlogComment"
  acts_as_ferret
  acts_as_taggable
end
