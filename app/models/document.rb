class Document < ActiveRecord::Base
  has_many :document_commentss, :class_name => "DocumentComment"
  acts_as_ferret :fields => [:title, :body]
  acts_as_taggable
end
