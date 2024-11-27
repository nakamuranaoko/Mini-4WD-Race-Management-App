class EventsController < ApplicationController
  # レース一覧
  def index
    @events = Event.includes(:user, :race_times).order(date: :desc)
  end

  # レース記録作成
  def new
    @events = Event.new
  end
end
