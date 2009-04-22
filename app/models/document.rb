class Document < ActiveRecord::Base
  has_many :document_comments, :class_name => "DocumentComment"
  
  acts_as_taggable
end
