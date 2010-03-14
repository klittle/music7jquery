class AddIdToArtists < ActiveRecord::Migration
  def self.up
    add_column  :artists, :artist_id,  :string
  end

  def self.down
    remove_column  :artists, :artist_id,  :string
  end
end
