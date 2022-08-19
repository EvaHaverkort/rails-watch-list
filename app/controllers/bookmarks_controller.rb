class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id]) # I find the list in the url
    @bookmark = Bookmark.new(params_list)
    @bookmark.list = @list

      if @bookmark.save
        redirect_to list_path(@list)
      else
        render :new, status: :unprocessable_entity
        # you want to say that if something is not saved that it was not save
      end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id]) # this comes from the redirect: you redirect to a url in which you pass the id, go to show
    @list = @bookmark.list # will get the whole object
    @bookmark.destroy
    redirect_to list_path(@list)
  end
end

private

def params_list
  params.require(:bookmark).permit(:comment, :movie_id) #only what comes in the form
end
