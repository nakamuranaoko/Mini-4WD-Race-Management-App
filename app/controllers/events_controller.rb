class EventsController < ApplicationController
    # ログインを確認し、未ログインの場合は自動的にログインページへリダイレクトする
    before_action :authenticate_user!, only: %i[new create show] 
    

  # レース一覧
  def index
    @events = Event.includes(:user, :race_times).order(date: :desc)
  end

  # レース記録作成
  def new
    @event = Event.new
    2.times { @event.race_times.build } # 必要なタイム入力フィールドを2つ用意
  end

  def show
    @event = Event.find(params[:id])
  end
  

  def create
    @event = Event.new(event_params)
    @event.user = current_user # ログインユーザーを関連付け

    if @event.save
      redirect_to @event, notice: "イベントが作成されました。" 
    else
    #   Rails.logger.debug @event.errors.full_messages # エラー内容をログに出力
      render :new, status: :unprocessable_entity
    end
  end

  private

  def event_params
    params.require(:event).permit(:date, :event_name, :venue, :weather, :temperature, :coment, race_times_attributes: [:rap_time])
  end
end
