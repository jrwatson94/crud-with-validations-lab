class SongsController < ApplicationController
    def show
        @song = Song.find(params[:id])
    end
    def create
        @song = Song.new(song_params)
        if @song.valid?
            @song.save
            redirect_to song_path(@song)
        else
            render :new
        end
    end

    def new
        @song = Song.new
    end

    private
    def song_params
        params.require(:song).permit(:title,:released,:release_date,:artist_name,:genre)
    end
end

