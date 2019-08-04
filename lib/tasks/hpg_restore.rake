
namespace :db do
  desc 'heroku pg_restore db.dump'
  task hpg_restore: :environment do
    exec('heroku run pg_restore -d safe-water-rails-api_development --clean --create db.dump')
  end
end
