class CreateMassDampers < ActiveRecord::Migration[7.2]
  def change
    create_table :mass_dampers do |t|
      t.references :machine, null: false, foreign_key: true # マシーンと関連付け
      t.integer :name # enum フロント、サイド、リア
      t.float :weight # 重さ
      t.integer :count # 個数

      t.timestamps
    end
  end
end
