class EventsController < ApplicationController
    # ログインを確認し、未ログインの場合は自動的にログインページへリダイレクトする
    before_action :authenticate_user!, only: %i[new create show]


  # レース記録作成
  def new
    @event = Event.new
    build_associations
  end

  # レース一覧
  def index
    @events = Event.includes(:user, :race_times).order(date: :desc)
  end



  def show
    @event = Event.find(params[:id])
  end


  def create
    @event = current_user.events.build(event_params)
    Rails.logger.debug @event.inspect # デバッグ用にイベントオブジェクトを表示
    if @event.save
      redirect_to @event, notice: "イベントが作成されました！"
    else
      build_associations # 保存に失敗した場合でも関連データが表示されるように再構築
      render :new, status: :unprocessable_entity
    end
  end

  private

  # 必要な関連データを構築
  def build_associations
    @event.race_times.build if @event.race_times.empty?
    machine = @event.machines.build if @event.machines.empty?
    machine.gimmicks.build if machine.gimmicks.empty?
    machine.breakes.build if machine.breakes.empty?
    machine.mass_dampers.build if machine.mass_dampers.empty?
    machine.machine_photos.build if machine.machine_photos.empty?
    @event.coruse_photos.build if @event.coruse_photos.empty?
  end

  # ストロングパラメーター
  def event_params
    params.require(:event).permit(
      :date, :event_name, :venue, :weather, :temperature, :coment,
      course_photos_attributes: [ :image ],
      race_times_attributes: [ :id, :rap_time, :course_length, :_destroy ],
      machines_attributes: [
        :id, :machine_name, :frame, :motor, :gear_ratio, :tire_diameter, :tire_type, :voltage, :speed, :other_comments, :body,
        machine_photos_attributes: [ :id, :image, :_destroy ],
        gimmicks_attributes: [
          :id, :gimmick_type,
          rollers_attributes: [ :id, :position, :material, :_destroy ]
        ],
        brakes_attributes: [ :id, :name, :color, :_destroy ],
        mass_dampers_attributes: [ :id, :name, :_destroy ]
      ]
    )
  end
end
