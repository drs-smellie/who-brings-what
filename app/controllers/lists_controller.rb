class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    #TO DO How to get lists connected to an event
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to event_path(@event), notice: "Awesomesauce. You have created a list!"
    else
      render "new", notice: "Bummer! Something went wrong. Please try to save your list again."
    end
  end

  private 

  def list_params
    params.require(:list).permit(:name)
  end

end