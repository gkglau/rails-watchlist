class ListsController < ApplicationController
  # '/lists'
  def index
    @lists = List.all
  end

  # '/lists/1'
  def show
    @list = List.find(params[:id])
  end

  # '/lists/new'
  def new
    # for our form builder helper
    @list = List.new
  end

  # this can't be accessed by a url. a form will post data here
  def create
    @list = List.new(list_params)
    if @list.save
      # makes a request to another controller action
      redirect_to list_path(@list)
    else
      # show some html / aka the form
      # redirect_to new_list_path
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    # white listing the information that came from the form
    params.require(:list).permit(:name, :photo)
  end
end
