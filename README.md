# proplike_3のREADME  

### アプリ名  
   <img width="256" alt="スクリーンショット 2020-08-08 20 49 22" src="https://user-images.githubusercontent.com/62422532/89709192-b90bf580-d9b8-11ea-9fe0-9e407e704dd0.png">　　

### 概要   
・不動産画像を投稿、一覧表示、編集、削除  
・ユーザーの登録、一覧表示、詳細表示、編集、削除  
・ログイン、ログアウト  

### 本番環境
http://175.41.233.7/

### 制作背景   
不動産サイトに物件を登録するのは面倒ではないでしょうか？　　

多くの不動産サイトは、物件情報の登録時に登録が必須となる項目が多いです。  
そのため、売却や賃貸希望の物件があっても、登録が手間でなにもせずそのままにしてしまっている不動産オーナーさんがいるはずです。  
物件画像のアップだけでもいい、金額は載せなくてもいい、どんな情報を載せるかは不動産オーナーさん次第です。  
物件情報登録の敷居を低くするために、インスタグラムのような感覚でサクサクとアップできるアプリ、proplike_2を作りました。  
インスタグラムが百貨店なら、proplike_2は専門店です。  
proplike_2は、新しい感覚の不動産サイトです。  
 
### DEMO  

 ![](https://i.gyazo.com/f3d871c9df49601f7e406ceaf2483b36.gif)
   
   
### 工夫したポイント  
インスタグラムのようなデザインにしたことです。
見た目や使い勝手が似ているため、利用者数の多いインスタグラムと同じような感覚でこのアプリを使用できます。

### 使用技術(開発環境)  
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

### 課題や今後実装したい機能  
デザインの変更、いいね機能

### DB設計  

#### ユーザーテーブル  
|Column|Type|Options| 
|------|----|-------|  
|username|string|  
|profile|text|  
|profile_image_id|reference|null:false,foreign_key:true|  
|email|string|null:false,unique:true|  
|password|string|null:false|  

Association  

- has_many:prop

#### プロップテーブル  
|Column|Type|Options|  
|------|----|-------|
|user_id|reference|null:false,foreign_key:true|  
|title|string|  
|body|text|  
|image_id|string|  

Association  

- belongs_to:user
