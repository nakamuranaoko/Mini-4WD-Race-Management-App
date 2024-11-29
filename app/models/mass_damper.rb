class MassDamper < ApplicationRecord
  belongs_to :machine

  # Enum の設定
  enum name: {front: 0,side: 1,rear: 2}

end
