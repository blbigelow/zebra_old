class DocumentComment < ActiveRecord::Base
  has_one :document
  acts_as_ferret
end
