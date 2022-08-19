class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # @bookmarks_this_list define the bookmarks that belong to this list
    @bookmarks_this_list = Bookmark.where(list_id: @list.id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    @list.save
    redirect_to list_path(@list.id)
    # params[:id], List.find(param[:id] is the only time you can use that)
  end
end

  private

def params_list
  params.require(:list).permit(:name)
end
