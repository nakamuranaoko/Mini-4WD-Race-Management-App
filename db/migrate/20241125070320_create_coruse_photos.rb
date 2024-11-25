class CreateCorusePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :coruse_photos do |t|
      t.string :image_url # 写真の保存先URL（必須）
      t.references :event, foreign_key: true # イベントとの関連
      t.timestamps
    end
  end
end
