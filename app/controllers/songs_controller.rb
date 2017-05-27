class SongsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @songs = current_artist.songs
  end

  def show
  end

  def new
    @song = current_artist.song.build
  end

  def create
    @song = current_artist.song.build(song_params)

    if @song.save
      redirect_to @song, notice: "Your song was added"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Song updated!"
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path
  end

private
def set_song
  @song = Song.find(params[:id])
end

def song_params
  params.require(:song).permit(:title, :release_date, :rating)
end

end
