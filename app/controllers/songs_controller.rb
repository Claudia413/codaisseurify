class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:new, :create, :update]

  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)

    respond_to do |format|
        if @song.save
          format.html { redirect_to artist_path(params[:artist_id]), notice: "Your song was added" }
          format.json {render :json, status: :created, location: @song }
      else
        format.html { redirect_to artist_path(params[:artist_id]) }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @songs = Song.all
  end

  def show
    render :json => @song
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
    redirect_to artist_path(params[:artist_id])
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
