class EventsController < ApplicationController
  before_action :current_events, only: [:index, :index_day, :index_night]
  
  def index
    @events = @current_events
  end

  def index_favorited
    @events = current_user.events
    @events = @events.where("date > ?", Time.now)
  end

  def index_day
    raise
    # @events = Event.where("DATETIME(date) BETWEEN '09:00:01' AND '18:00:00'")
    # @events = @current_events.date.select_hour(start_hour: 8, end_hour: 18)
    @current_events.reject do |current_event|
       current_event.date.hours
    end
  end

  def index_night
    @events = @current_events.where("TIME(date) BETWEEN '18:00:01' AND '9:00:00'")
    # @events = @current_events.date.select_hour(start_hour: 18, end_hour: 8)
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
    @current_events = Event.where("date > ?", Time.now)
  end
end
