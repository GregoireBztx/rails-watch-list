class BookmarksController < ApplicationController

    def new
      @bookmark = Bookmark.new
    end

    def create
      @bookmark = Bookmark.new(bookmark_params)
      @list = List.find(params[:list_id])
      @bookmark.list = @list
      @movie = Movie.find(params[:bookmark][:movie_id])
      @bookmark.movie = @movie
      if @bookmark.save
      redirect_to list_path(@list)
      else
      render "lists/show"
      end
    end
    
    def destroy
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
      redirect_to list_path(@bookmark.list)
    end

    private
    
    def bookmark_params
      params.require(:bookmark).permit(:comment)
    end


end
