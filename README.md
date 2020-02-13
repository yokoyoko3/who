# このアプリについて
## whoとは
「who」とは、初めて会った人の名前や特徴を記録し、次に会った時に「この人の名前なんだっけ？」 「この人となんの話をしたっけ？」 とサクッと調べれるメモアプリです。
新入生や新入社員、サービス業の方など、大勢の人と関わる人、関わりたい人に使ってもらえたらなぁ。

## 概要
アプリ名：who

URL : https://who-who-who.herokuapp.com/

使用言語：Ruby on Rails、jQuery

主な機能：ユーザー登録、リスト作成、リスト検索

作業人数：1人

作業日数：７日間

## このアプリを作ろうと思ったきっかけ
ちょっとした人との繋がりを残しておきたいと思ったためです。
技術の発展で人と対面で話すことの少なくなってきた今日この頃。
人と話すのが好き。話したいけど話すきっかけがない。
そんなきっかけを作りたいと思い開発しました。



## Usage

```
$ git clone https://github.com/yokoyoko3/who.git
$ cd selfPR
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉http://localhost:3000/
```


## 具体的な機能紹介
#### ・ ユーザー登録
```
deviseを用いて、ユーザー登録機能の実装を行った。
ログインしていないユーザーはログインページに遷移される。
```

![image](https://user-images.githubusercontent.com/57942559/74317797-59dd7780-4dbf-11ea-9b4b-0225e92f6799.png)


#### ・ リスト作成

```
ログインし、ホーム画面の「リスト作成」ボタンを押すとリストを作成できるページに遷移します。
本名orニックネーム
性別
年齢
体型
身長
髪型
など自分が感じた数値を選択
特徴
自分感じたこと、知った情報を自由に記入。
「追加」ボタンで特徴記入欄を追加。
特徴以外の必須項目を入力して「登録」ボタンを押して登録。

```

![image](https://user-images.githubusercontent.com/57942559/74320992-e9d1f000-4dc4-11ea-9887-5558fd475738.png)

#### ・ リスト検索

```
ホーム画面の「リスト一覧」ボタンを押し、リストの検索画面に遷移。
該当する項目をフォームから選び検索。検索されたリストの一覧を表示。


```
![image](https://user-images.githubusercontent.com/57942559/74322361-2bfc3100-4dc7-11ea-9d83-4e53eaf15e70.png)


## DB設計図
![image](https://user-images.githubusercontent.com/57942559/74400649-ed678480-4e61-11ea-965f-54ca086ffd13.png)

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, default: ""|
|email|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|
#### Association
- has_many :sns_credentials
- has_many :persons, dependent: :destroy

### sns_credentialsテーブル
|Column|Type|Options|
|------|----|-------|
|provider|string||
|uid|string||
|user_id|bigint||
#### Association
- belongs_to :user, optional: true

### peopleテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint||
|name|string||
|gender|string||
|age|string||
|height|string||
|body|string||
|hair|string||
#### Association
- has_many :characters, dependent: :destroy
- belongs_to :user
- accepts_nested_attributes_for :characters

### charactersテーブル
|Column|Type|Options|
|------|----|-------|
|person_id|bigint||
|chara|string|null: false|
#### Association
belongs_to :person

