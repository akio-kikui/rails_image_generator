docker-compose build

docker-compose run web bundle exec rails runner app/scripts/image_convert_sample.rb
