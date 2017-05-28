class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
  end

  def create
    @song = @artist.song.build(song_params)

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
