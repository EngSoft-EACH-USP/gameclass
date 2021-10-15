release: rails db:migrate:reset
release: rails db:seed
web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}