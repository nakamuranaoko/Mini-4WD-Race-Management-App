# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# ユーザーの作成
user = User.create!(
  email: "test@example.com",
  password: "password",
  name: "Test User"
)

# イベントデータを作成
5.times do |i|
  event = Event.create!(
    date: Date.today - i,
    event_name: "大会 #{i + 1}",
    venue: "会場 #{i + 1}",
    weather: [ "晴れ", "曇り", "雨" ].sample,
    temperature: rand(15..30),
    coment: "大会 #{i + 1} のコメントです。",
    user: user
  )

  # タイムデータを作成
  2.times do |j|
    RaceTime.create!(
      rap_time: rand(10.0..30.0).round(2),
      event: event
    )
  end

  #   # 写真データを作成
  #   3.times do
  #     CorusePhoto.create!(
  #       image_url: "https://via.placeholder.com/300", # プレースホルダー画像
  #       event: event
  #     )
  #   end
end

puts "ダミーデータの作成が完了しました！"
