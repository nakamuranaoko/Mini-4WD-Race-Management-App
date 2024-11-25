class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.date :date, null: false # nullを許容しない設定
      t.string :weather
      t.float :temperature
      t.string :event_name, null: false
      t.string :venue, null: false
      t.string :coment
      t.references :user, foreign_key: true #外部キーとしてUserモデルと関連
      t.timestamps
    end
  end
end
