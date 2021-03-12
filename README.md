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
