namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app safe-water-api --confirm safe-water-api
      heroku run rake db:migrate --app safe-water-api
      heroku run rake db:seed --app safe-water-api')
  end
end
