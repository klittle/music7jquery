class AlbumsController < ApplicationController
  def show
    @select_type = Album.find(:all, :order => :name)
    @order = params[:order]

  end
  
  def index
    @albums = Album.paginate(:per_page => 6, :page => params[:page])
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.create! params[:album]
    redirect_to @album
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update_attributes params[:album]
    redirect_to @album
  end
  
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end
  
end
