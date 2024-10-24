# mini-4WD-race-Manament

## ■サービス概要

1,ミニ四駆のレース大会記録アプリです。

2,大会の日付、コース、タイム、使用マシンの情報を記録します。

3,それらをX（旧Twitter）にシェアできます。レース結果の管理とシェアが簡単に行えるツールです。

## ■ このサービスへの思い・作りたい理由

主人がミニ四駆の大会に出ており、記録を残すことに価値を感じていました。しかし、簡単に管理できるツールがなく、レース結果をシェアするために手間がかかることが多かったため、効率的に記録しつつ、それを共有できるアプリを作りたいと考えました。

## ■ ユーザー層について

ミニ四駆を趣味にしているレーサーや愛好家が対象です。特に、自分のマシンやレース結果を記録・管理したい人や、SNSでシェアしたい人に向けています。

## ■サービスの利用イメージ

ユーザーは大会終了後にアプリに記録を入力し、日付やコース、使用マシン、タイムなどを保存します。そのデータをすぐにXにシェアすることで、他のレーサーと情報共有ができ、また、自分の過去のレース記録を振り返ることができます。

## ■ ユーザーの獲得について

ミニ四駆の愛好者が集まるSNSコミュニティやイベントで宣伝することを考えています。また、レースイベントの参加者向けに簡単なデモを実施し、アプリの便利さをアピールする予定です。

## ■ サービスの差別化ポイント・推しポイント

他のレース記録アプリと比較して、ミニ四駆に特化しており、特定のマシンの詳細やコース情報も記録できる点が優れています。また、Xへのシェア機能があるため、簡単に結果を友人や仲間と共有できます。

## ■ 機能候補

### ・MVPリリース時に作っておきたい機能

大会日付、コース、使用マシン、タイムの記録機能
レース記録の一覧表示機能
Xへのシェア機能
ログイン機能

### ・本リリースまでに作っておきたい機能

コースやマシンのカスタム詳細を追加で記録できる機能
気に入ったユーザーの記録をセーブ出来る機能

## ■ 機能の実装方針予定

Xへのシェア機能については、Twitter APIを使用して実装予定です。ユーザーがアカウントを連携させることで、記録した内容を即座にSNSに投稿できるようにします。また、マシンやコースの記録に関しては、ユーザーがカスタマイズできるフィールドを設け、細かい情報を入力可能にします。