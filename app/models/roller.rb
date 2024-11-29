class Roller < ApplicationRecord
  belongs_to :gimmick

  # Enum定義
  enum position: {
    top_left: 0,   # 左上
    mid_left: 1,   # 左中
    bottom_left: 2, # 左下
    top_right: 3,  # 右上
    mid_right: 4,  # 右中
    bottom_right: 5 # 右下
  }
end
