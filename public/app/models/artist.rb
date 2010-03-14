class Artist < ActiveRecord::Base
  has_many :albums
  validates_presence_of :name
  
  before_save 
  
  def inspect
    "Artist(#{name})"
  end
end
