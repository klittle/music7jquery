require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  test "should show an artist" do
    artist = Artist.create!(:name => "James Taylor")
    
    get :show, :id => artist.to_param
    
  end
end




