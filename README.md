# README

# アプリ名　かごラー
![kagora1](https://user-images.githubusercontent.com/63178332/84157888-3513bb00-aaa6-11ea-9418-2959427688d6.jpg)
![kagora2](https://user-images.githubusercontent.com/63178332/84157896-36dd7e80-aaa6-11ea-89e1-108e0a43c9ca.jpg)

# 説明
ラーメン好きの開発者が、ご当地鹿児島ラーメンの中から、厳選した名店を紹介するアプリです。
ログイン機能、コメント機能実装してます。
アプリ内の中でもラーメン店の口コミやコメントができるようになっています。

# 使い方
各店舗の画像をクリックすると口コミブログへ遷移します。
ラーメン店のの口コミを投稿する事ができます。
今では、鹿児島の一大イベントとなった、鹿児島ラーメン王選手権のこれまでの結果をリンク先から見る事ができます。
# kagoramen DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|user_id|integer|null: false|

# Association
- has_many :posts
- has_many :comments

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|string|null: false|
|image|text|null: false|
|user_id|integer|null: false|

# Association
- belongs_to :user
- has_many :comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false|

# Association
- belongs_to :user
- belongs_to :post
