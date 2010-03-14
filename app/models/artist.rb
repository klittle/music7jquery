class Artist < ActiveRecord::Base
  attr_accessible :name
  
  has_many :albums
  validates_presence_of :name, :message => "Please fill in an Artist."
  validates_uniqueness_of :name, :message => "Artist is already entered."
  
  def inspect
    "Artist(#{name})"
  end
  
  def albums_by_name
     @albums = albums.find(:all, :order => 'name DESC')
  end
  
  def albums_by_date
     @albums = albums.find(:all, :order => 'albums.created_at DESC')
  end
    
end
