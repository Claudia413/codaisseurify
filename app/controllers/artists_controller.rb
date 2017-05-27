class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = artist.find(params[:id])
  end
end
