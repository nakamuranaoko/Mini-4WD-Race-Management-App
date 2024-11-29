class Machine < ApplicationRecord
  belongs_to :event # イベントとの関連付け
  has_many :gimmicks, dependent: :destroy # ギミックとの関連付け
  has_many :brakes, dependent: :destroy # ブレーキとの関連付け

  validates :machine_name, 
  validates :tire_diameter, numericality: { greater_than: 0 }, allow_nil: true
  validates :voltage, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :speed, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  # モーターの選択肢
  enum motor: {
    mahha: 0,     # マッハ
    hyper: 1,     # ハイパー
    sprint: 2,    # スプリント
    pawerda: 3,   # パワダ
    light: 4,     # ライト
    rev: 5,       # レブ
    torque: 6,    # トルク
    atomi: 7,     # アトミ
    nomamo: 8,    # ノマモ
    mini: 9,      # ミニ
    touch: 10,    # タッチ
    zen: 11,      # ゼン
    jet: 12,      # ジェット
    ultra: 13,    # ウルタラ
    plasma: 14,   # プラズマ
    other: 15     # その他
  }

  # ギア比の選択肢
  enum gear_ratio: {
    ratio_3_5_1: 0,    # 3.5:1
    ratio_3_7_1: 1,    # 3.7:1
    ratio_4_1: 2,      # 4:1
    ratio_4_2_1: 3,    # 4.2:1
    ratio_5_1: 4,      # 5:1
    ratio_6_4_1: 5,    # 6.4:1
    ratio_8_75_1: 6,   # 8.75:1
    ratio_11_2_1: 7    # 11.2:1
  }

  # シャーシの選択肢
  enum chassis: {
    ms: 0,             
    ma: 1,             
    fma: 2,            
    s2: 3,
    vs: 4,
    vz: 5,
    x: 6,
    xx: 7,
    type1: 8,
    type2: 9,
    type3: 10,
    type4: 11,
    type5: 12,
    zero: 13,   # ゼロ
    fm: 14,
    sfm: 15,
    s1: 16,
    tz: 17,
    tzx: 18
  }
end
