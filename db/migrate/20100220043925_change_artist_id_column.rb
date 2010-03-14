class ChangeArtistIdColumn < ActiveRecord::Migration
  def self.up
    rename_column :artists, :artist_id, :artist_info
  end

  def self.down
    rename_column :artists, :artist_info, :artist_id
  end
end
