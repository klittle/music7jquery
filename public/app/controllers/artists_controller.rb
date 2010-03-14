class ArtistsController < ApplicationController
  
  def show
    @artist = Artist.find(params[:id])
  end
  
  def index
    @artists = Artist.find(:all)
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create! params[:artist]
    redirect_to @artist
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes params[:artist]
    redirect_to @artist
  end
  
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end
  
end

