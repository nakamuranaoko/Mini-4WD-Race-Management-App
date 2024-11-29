class Breake < ApplicationRecord
  belongs_to :machine

  enum name: { front: 0, side: 1, rear: 2 } # 位置をEnumで管理
  enum color: { green: 0, blue: 1, black: 2, gray: 3, white: 4, pink: 5, none: 6 } # カラー
  
end
