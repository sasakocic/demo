# README

[Ruby on rails 7 demo](https://d1snj8sshb5u7m.cloudfront.net/Rails7.mp4)

Executed commands
```bash
rails new demo
brew install rails-completion # for rails cli completion
rails generate scaffold post title:string content:text
bundle
rails db:migrate
rails action_text:install # to add rich text
bundle
rails db:migrate

./bin/importmap pin local-time
./bin/importmap pin local-time --download
rails g resource comment post:references content:text
rails db:migrate
rails g mailer comments submitted
bundle
rails db:system:change --to=postgresql
bundle
brew tap heroku/brew && brew install heroku
heroku create
git push heroku master
heroku run rake db:migrate
# heroku addons:create heroku-redis:hobby-dev -a protected-brushlands-24257
heroku logs --tail
```
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
