class Event < ApplicationRecord
  validates :weather, presence: true, length: { maximum: 255 } # 値が空でない事を確認し、文字数の最大値を制限する
  validates :temperature, presence: true, length: { maximum: 255 }
  validates :event_name, presence: true, length: { maximum: 255 }
  validates :venue, presence: true, length: { maximum: 255 }
  validates :coment, presence: true, length: { maximum: 65_535 }

  belongs_to :user # EventモデルがUserモデルに属している
  has_many :coruse_photos, dependent: :destroy # コース写真との関連
  has_many :race_times, dependent: :destroy # レースタイムとの関連
end
