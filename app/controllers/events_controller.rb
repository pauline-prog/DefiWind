class EventsController < ApplicationController
  # before_action :current_events, only[:index, :index_favorited, :index_day, :index_night]
  
  def index
    @events = Event.all
  end

  def index_favorited
    # @events = @events.current_user.events
    @events = current_user.events
  end

  def index_day
    @events = @events.where("date parameter")
  end

  def index_night
    @events = @events.where("date parameter")
  end

  def show
  	@event = Event.find(params[:id])
  end

  def favorite
    @event = Event.find(params[:event_id])
    if current_user.events.include?(@event)
      Favorite.where(user: current_user, event: @event).first.destroy
    else
      Favorite.create(user: current_user, event: @event)
    end
    redirect_to events_path(anchor: "event-#{@event.id}")
  end

  private

  def current_events
    @events = Event.where("date > ?", Time.now)
  end
end
