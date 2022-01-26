# Deployment

## Heroku

Bento is pre-configured to enable easy deployments to Heroku. There's also an [app.json](https://github.com/darokel/bento/blob/master/app.json) ready to go for creating review apps with a script to seed data. 

To deploy the app to Heroku, run:

    ./bin/deploy

You can also pass in a branch name:

    ./bin/deploy staging

You'll want to make sure you've setup the remotes for each of your environments in Heroku based on the [setup script](https://github.com/darokel/bento/blob/master/bin/setup).

You can also customise the Heroku release command via this [rake task](https://github.com/darokel/bento/blob/master/lib/tasks/heroku.rake#L6).

### Review Apps

To enable review apps for each PR, you'll need to create a [pipeline](https://devcenter.heroku.com/articles/pipelines) on Heroku for your app(s). Then configure how you want your review apps to work, see this [guide](https://devcenter.heroku.com/articles/github-integration-review-apps) for reference.

The `app.json` file is already configured for Bento, you can customise it based on your preference. Once you've enabled Review apps for your project, you should be able to see them being created on Heroku and in your PRs.

You can also customise or setup a `postdeploy` command to run after a review app is created via this [rake task](https://github.com/darokel/bento/blob/master/lib/tasks/heroku.rake#L16).

### Seeding Environment Data

You may want to seed your Review apps with the same data as your staging/prod's database data. You can use the [review app](https://github.com/darokel/bento/blob/master/bin/review-app) script and run it like so:

    ./bin/review-app [PR_ID]

eg:

    ./bin/review-app 3

You'll need to change the `PARENT_APP_NAME` and `APP_NAME` variables to match your own settings. 


## Other Hosts

You're able to deploy Bento to any other platform of your choice. If you'd like to get rid of the Heroku config, you can just delete the Heroku related lines from this PR https://github.com/darokel/bento/pull/3 and this [line](https://github.com/darokel/bento/blob/master/config/environments/production.rb#L6) from `config/environments/production.rb`.