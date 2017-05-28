class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

end
