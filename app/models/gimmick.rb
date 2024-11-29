class Gimmick < ApplicationRecord
  belongs_to :machine
  has_many :rollers, dependent: :destroy

  # Enum定義
  enum gimmick_type: { front: 0, side: 1, rear: 2 }
end
