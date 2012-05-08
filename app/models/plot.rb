class Plot < ActiveRecord::Base
  attr_accessible :story, :title
  validates :story, :title, :presence => true
end
