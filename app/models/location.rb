class Location < ActiveRecord::Base

  attr_accessible :position

  belongs_to :page
  belongs_to :word
end
