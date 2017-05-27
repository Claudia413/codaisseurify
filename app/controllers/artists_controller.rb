class ArtistsController < ApplicationController
  def index
  end

  def show
    @artist = artist.find(params[:id])
  end
end
