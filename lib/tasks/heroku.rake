# frozen_string_literal: true

if Rails.env.production?
  namespace :heroku do
    desc 'Heroku release tasks (runs on every code push, before postdeploy task on review app creation)'
    task release: :environment do
      # Release phase enables you to run certain tasks before a new release of your app is deployed on Heroku.
      # Do things here like:
      # Sending CSS, JS, and other assets from your apps slug to a CDN or S3 bucket
      # Priming or invalidating cache stores
      # Running database schema migrations
      # See https://devcenter.heroku.com/articles/release-phase for more info.
    end

    desc 'Heroku postdeploy tasks (runs only on review app creation, after release task)'
    task post_deploy: :environment do
    end
  end
end
