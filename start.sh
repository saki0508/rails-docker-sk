#!/bin/sh

if [ "${RAILS_ENV}" = "production" ] #本番環境だけ違う処理をかく
then
    bundle exec rails assets:precompile
fi

bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0
