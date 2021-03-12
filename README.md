## Setup project

Require enviroment: ruby2.7.0 and rails 6.0.3

Edit file config/application.yml to your local database username and password

Run ```rails db:create``` to setup database

Run ```rails db:migration``` to migrate database

Run ```rails db:seed``` to create sample data

## Running project

Run ```rails s```

Run ```bin/webpack-dev-server```

## Run test
```
  bundle exec rspec
```

## Preview Screen

![save_articles_sceen.png](https://2.pik.vn/202170d1a51f-509e-4a27-8cf3-2755294a23b8.png)


![articles_sceen.png](https://2.pik.vn/202127b44536-25d6-4768-b2e4-989325947bfb.png)

## Gem used

* rspec-rails
  * To run test
* shoulda-matchers
  * Provides RSpec- and Minitest-compatible one-liners to test common Rails functionality 
* factory_bot_rails
  * Fake data to testing with Rspec
* figaro
  * To setup enviroment variables
* rest-client
  * To make http requests
* feedjira
  * To parse atom xml
