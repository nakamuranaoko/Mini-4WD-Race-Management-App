class CreateMachinePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :machine_photos do |t|
      t.string :image_url # 写真の保存先URL
      t.references :machine, foreign_key: true # マシンとの関連
      t.timestamps
    end
  end
end
