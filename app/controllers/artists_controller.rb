class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])


    sort = params[:sort] || 'name'
    sort_options={'name'=> 'name ASC', 'date' => 'created_at DESC'}
    @albums = @artist.albums.all :order => sort_options[sort]
    #respond_to do |format|
      #format.html { redirect_to @artist}
      #format.js
      #redirect_to artist_album(@artist.artist.id)}
    #end
  end

  def index
    @artists = Artist.find(:all)
    @artists = Artist.paginate(:per_page => 5, :page => params[:page])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create! params[:artist]
    @choice_id = params[:choice_id]
    
    respond_to do |format|
      if @artist.save #!= nil
        flash[:notice] = 'Artist was successfully saved.'
        format.html  { redirect_to :action => 'index' }
        #format.xml  { render :xml => @user, :status => :created, :location => @user }
      else #@artist.save = nil
        formal.html { render :action => "new" }
        format.xml  { render :xml => @artist.errors, :status => :unprocessable_entity }
      #else
        #redirect_to :action => 'index'
      end
    end    
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes params[:artist]
    redirect_to :action => "index" 
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists
  end



end

