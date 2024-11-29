class CreateRollers < ActiveRecord::Migration[7.2]
  def change
    create_table :rollers do |t|
      t.references :gimmick, null: false, foreign_key: true # Gimmicksテーブルの外部キー
      t.integer :position # ローラーの位置 (Enum)
      t.float :value # ローラーの直径 (mm)
      t.string :material # ローラーの素材 (例: アルミ、ステンレス、銅)
      
      t.timestamps
    end
  end
end
