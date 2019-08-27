#!/bin/bash

if [ $# -eq 0 ]
then
  bundle exec rails db:drop
  bundle exec rails db:create
  bundle exec rails db:migrate
  bundle exec rails db:seed
else
  RAILS_ENV=development bundle exec rails db:drop
  RAILS_ENV=development bundle exec rails db:create
  RAILS_ENV=development bundle exec rails db:migrate
  RAILS_ENV=development bundle exec rails db:seed
fi