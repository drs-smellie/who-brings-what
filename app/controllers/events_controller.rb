class EventsController < ApplicationController

  def index
    @events = current_user.events
  end 


  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Awesomesauce. You have created an event!"
    else
      render "new", notice: "Bummer! Something went wrong. Please try to save your event again."
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private 

  def event_params
    params.require(:event).permit(:name, :date, :description)
  end

end