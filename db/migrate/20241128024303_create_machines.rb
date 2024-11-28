class CreateMachines < ActiveRecord::Migration[7.2]
  def change
    create_table :machines do |t|
      t.references :event, null: false, foreign_key: true # イベントと関連付ける外部キー
      t.string :machine_name    # マシン名
      t.integer :motor          # モーター
      t.integer :gear_ratio     # ギア比
      t.integer :chassis        # シャーシ
      t.float :tire_diameter    # タイヤ径
      t.string :tire_type       # タイヤ種
      t.float :voltage          # 電圧
      t.float :speed            # 速度
      t.text :other_comments    # コメント・メモ

      t.timestamps
    end
  end
end
