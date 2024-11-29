class CreateBreakes < ActiveRecord::Migration[7.2]
  def change
    create_table :breakes do |t|
      t.references :machine, null: false, foreign_key: true # Machine に紐づく外部キー
      t.integer :name    # enum で管理フロント、サイド、リア
      t.integer :color   # enumで管理
      t.float :thickness # 厚み
      t.float :length    # 縦幅
      t.float :width     # 横幅
      t.float :position  # 位置
      t.float :tamite    # タミテ

      t.timestamps
    end
  end
end
