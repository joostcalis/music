class SongsController < ApplicationController
  before_action :load_artist
  def new
    @song = Song.new
  end

  def index
    @songs = Song.joins(:artist).all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)
    @song.artist = @artist
    if @song.save
        redirect_to root_path
    else
        render :new
    end
  end

  private

  def load_artist
      @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title, :release_date, :highest_chart_rating)
  end
end
