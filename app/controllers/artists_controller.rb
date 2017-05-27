class ArtistsController < ApplicationController
  def show
    @artist = artist.find(params[:id])
  end
end
