class EventsController < ApplicationController
  before_action :current_events, only: [:index, :index_day, :index_night]

  def index
    @events = @current_events
  end

  def index_favorited
    @events = current_user.events
    @events = @events.where("date > ?", Time.now).order('date ASC')
  end

  def index_day
    @events = []
    @current_events.each do |current_event|
       if current_event.date.hour < 18 && current_event.date.hour > 8
         @events.push(current_event)
       end
    end
    return @events
  end

  def index_night
    @events = []
    @current_events.each do |current_event|
       if current_event.date.hour > 18 || current_event.date.hour < 8
         @events.push(current_event)
       end
    end
    return @events
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
    redirect_to request.referrer
  end

  private

  def current_events
    @current_events = Event.where("date > ?", Time.now).order('date ASC')
  end
end
