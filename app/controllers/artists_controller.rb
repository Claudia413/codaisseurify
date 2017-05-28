class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    if (params[:order_by]== "z to a")
      @artists = Artist.all.order_by_name_reverse
    else
      @artists = Artist.all.order_by_name
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

private
  def set_artist
    @artist = Artist.find(params[:id])
  end
end
