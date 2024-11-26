class EventsController < ApplicationController
  def index
    @events = Event.includes(:user, :race_times).order(date: :desc)
  end
end
