# proplike_3のREADME  

### アプリ名  　
   <img width="206" alt="スクリーンショット 2020-08-30 11 41 49" src="https://user-images.githubusercontent.com/62422532/91650211-bda76380-eab7-11ea-9279-71030c012078.png">

### 概要   
・不動産画像を投稿、一覧表示、編集、削除  
・ユーザーの登録、一覧表示、詳細表示、編集、削除  
・ログイン、ログアウト  

### 本番環境
http://175.41.233.7/

### 制作背景   
不動産会社に時代にこんなアプリがあったらいいなと思ったものを作成しました。  
物件情報登録の敷居を低くするために、インスタグラムのような感覚でアップできるアプリ、proplike3を作りました。   
多くの不動産サイトは、登録が必須となる項目が多いです。  
そのため、売買や賃貸希望の物件があっても、登録が手間でなにもせずそのままにしている不動産オーナーさんがいるはずです。  
物件画像のアップだけでもいい、金額は載せなくてもいい、どんな情報を載せるかは不動産オーナーさん次第です。  
インスタグラムが百貨店なら、proplike3は専門店です。  
proplike3は、新しい感覚の不動産サイトです。  
 
### DEMO  

 [![Image from Gyazo](https://i.gyazo.com/e79703bde84e2cd3ff4d0351898849ac.gif)](https://gyazo.com/e79703bde84e2cd3ff4d0351898849ac)
   
     

### 工夫したポイント  
インスタグラムのようなデザインにしたことです。
見た目や使い勝手が似ているため、利用者数の多いインスタグラムと同じような感覚でこのアプリを使用できます。

### 使用技術(開発環境)  
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

### 課題や今後実装したい機能  
星レビュー機能

### DB設計  

#### ユーザーテーブル  
|Column|Type|Options| 
|------|----|-------|  
|username|string|  
|profile|text|  
|profile_image_id|string|null:false,foreign_key:true|  
|email|string|null:false,unique:true|  
|password|string|null:false|  

Association  

- has_many:prop  
- has_many:like  

#### プロップテーブル  
|Column|Type|Options|  
|------|----|-------|
|user_id|integer|null:false,foreign_key:true|  
|title|string|  
|body|text|  
|image_id|string|  

Association  

- belongs_to:user  
- has_many:like  

#### ライクテーブル  
|Column|Type|Options|  
|------|----|-------|
|user_id|integer|
|prop_id|integer|

Association  

- belongs_to:user 
- belongs_to:prop




