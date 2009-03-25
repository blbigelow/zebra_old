class Blog < ActiveRecord::Base
  has_many :blog_comments, :class_name => "BlogComment"
  
  acts_as_ferret :fields => [:title, :body]
end
