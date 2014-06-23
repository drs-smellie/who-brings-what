class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_url, notice: "Awesomesauce. You have created an event!"
    else
      render "new", notice: "Bummer! Something went wrong. Please try to save your event again."
    end
  end


  private 

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end

end