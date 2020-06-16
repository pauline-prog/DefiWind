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



    # if current_page?(controller: 'event', action: 'show')
    #   redirect_to event_path(@event)
    # # # elsif current_page?(day_events_path)
    # # #   redirect_to day_events_path(anchor: "event-#{@event.id}")
    # # # elsif current_page?(night_events_path)
    # # #   redirect_to night_events_path(anchor: "event-#{@event.id}")
    # # # elsif current_page?(favorited_events_path)
    # # #   redirect_to favorited_events_path(anchor: "event-#{@event.id}")
    # else
    #   redirect_to events_path(anchor: "event-#{@event.id}")
    # end
  end

  private

  def current_events
    @current_events = Event.where("date > ?", Time.now).order('date ASC')
  end
end
