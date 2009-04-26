class BlogComment < ActiveRecord::Base
  has_one :blog, :class_name => "Blog"
  acts_as_ferret
end
