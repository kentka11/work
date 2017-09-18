# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails generate model User enterprise_id:string name:string email:string password:string  

  $ rails generate controller StaticPages home help
  $ rails destroy  controller StaticPages home help

なお第6章でも、次のようにモデルを自動生成する方法を紹介します。

  $ rails generate model User name:string email:string

モデルの自動生成についても、同様の方法で元に戻すことができます。

  $ rails destroy model User


データベースのマイグレーションを変更します。

  $ rails db:migrate

元に戻したいときは、db:rollbackで1つ前の状態に戻します。

  $ rails db:rollback

最初の状態に戻したいときは、VERSION=0オプションを使います。

  $ rails db:migrate VERSION=0

Railsでは (6.1.1で見たように) マイグレーションでインデックスを追加します。
rails generate migration add_index_to_users_email
