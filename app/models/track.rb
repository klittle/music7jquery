class Track < ActiveRecord::Base
  validates_presence_of :name
  belongs to  :album
end
