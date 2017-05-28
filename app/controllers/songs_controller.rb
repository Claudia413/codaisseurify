class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:new, :create, :update, :destroy]

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)

    if @song.save
      redirect_to @artist, notice: "Your song was added"
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
def set_artist
  @artist = Artist.find(params[:artist_id])
end

def set_song
  @song = Song.find(params[:id])
end

def song_params
  params.require(:song).permit(:title, :release_date)
end

end
