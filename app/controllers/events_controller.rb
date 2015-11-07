class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event)
    .permit(
      :name, :descripion, :duration,
      :password, :password_confirmation
    )
  end
end
