class BlogComment < ActiveRecord::Base
  belongs_to :blog
  acts_as_ferret
end
