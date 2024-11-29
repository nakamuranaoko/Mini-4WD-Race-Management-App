class CreateGimmicks < ActiveRecord::Migration[7.2]
  def change
    create_table :gimmicks do |t|
      t.references :machine, null: false, foreign_key: true # Machines テーブルの外部キー
      t.string :name # ギミックの名前
      t.integer :gimmick_type # ギミックの種類（フロント、サイド、リア）
      
      t.timestamps
    end
  end
end
