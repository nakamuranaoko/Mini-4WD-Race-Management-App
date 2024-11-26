class CreateRaceTimes < ActiveRecord::Migration[7.2]
  def change
    create_table :race_times do |t|
      t.float :rap_time # タイム
      t.references :event, foreign_key: true # イベントとの関連
      t.timestamps
    end
  end
end
