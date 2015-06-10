# r0z [![Build Status](https://travis-ci.org/Rob1NN/r0z.rb.svg)](https://travis-ci.org/Rob1NN/r0z.rb) [![Stories in Ready](https://badge.waffle.io/Rob1NN/r0z.rb.png?label=ready&title=Ready)](https://waffle.io/Rob1NN/r0z.rb)

This is the source code for r0z.biz

## Requirements

- UNIX-like system
- Ruby 2.0.0+
- Bundler
- sqlite3 or mysql

## Installation

Copy the config file and adjust it to your needs

    # cp config/config.yaml.example config/config.yaml
    # nano config/config.yaml

#### Install Gems

    # Deployment:
    $ bundle install --deployment

    # Development:
    $ bundle install --without production

#### Initialize Database

    $ bundle exec rake db:migrate RAILS_ENV=production

#### Compile Assets

    $ bundle exec rake assets:precompile RAILS_ENV=production

#### Run the server

    # Development mode:
    $ bundle exec rails server

## License

AGPLv3.  
