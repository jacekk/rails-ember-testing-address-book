# Setup

    git clone git@github.com:ryrych/rails-ember-testing-address-book.git address-book
    cd address-book
    bundle
    cp config/database.example.yml config/database.yml
    rake db:migrate
    rails s

# Ember tests

    guard -g js

# Rails tests

    rake db:migrate RAILS_ENV=test
    guard -g rb
