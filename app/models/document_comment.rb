class DocumentComment < ActiveRecord::Base
  belongs_to :document
  acts_as_ferret
end
