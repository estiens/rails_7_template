<div align="center">
  <br>
  <h1>Bento 🍱</h1>
  <strong>A deliciously modern vanilla Rails stack for your next big idea.</strong>
</div>

<p align="center">
  <a href="https://www.ruby-lang.org/en/">
    <img src="https://img.shields.io/badge/Ruby-v3.0.2-green.svg" alt="ruby version">
  </a>
  <a href="http://rubyonrails.org/">
    <img src="https://img.shields.io/badge/Rails-v7.0.0-brightgreen.svg" alt="rails version">
  </a>
  <a href="https://circleci.com/gh/darokel/bento">
    <img src="https://circleci.com/gh/darokel/bento.svg?style=svg" alt="circle ci badge">
  </a>
  <img src="https://img.shields.io/github/languages/code-size/darokel/bento" alt="GitHub code size in bytes">
</p>

<p align="center">
  <a href="https://heroku.com/deploy?template=https://github.com/darokel/bento/tree/master" alt="Deploy to Heroku">
    <img alt="Deploy" src="https://www.herokucdn.com/deploy/button.svg"/>
  </a>
</p>


## What is Bento?

Bento is a modern and vanilla Rails 7 stack which adheres to the [Rails doctrine](https://rubyonrails.org/doctrine/) as much as possible. It's a starter template for building wonderful software products with Rails.

I created this template so you can hit the ground running and focus on your project without wasting time on boilerplate code.

### What's in the box?

Bento is designed to be lean and healthy with all the essentials for a productive and enjoyable development/testing workflow.

It provides a few staples:

- All the major [Rails](https://rubyonrails.org/) 7 defaults (except for Test Unit in favour of Rspec)
- Modern JavaScript bundled with [ES Build](https://github.com/evanw/esbuild) via the [JS Bundling](https://github.com/rails/jsbundling-rails) gem
- Modern CSS powered by Dart Sass and the [CSS Bundling](https://github.com/rails/cssbundling-rails) gems
- [Hotwire](https://hotwire.dev/) Stack ([Turbo](https://turbo.hotwire.dev/) & [Stimulus](https://stimulus.hotwire.dev/)) for SPA-like JavaScript sprinkles without the SPA complexity.
- [Jest](https://jestjs.io/) for easy JavaScript testing. See `app/javascript/controllers` for an example
- [Sidekiq](https://sidekiq.org/) for background jobs
- [Rspec](https://rspec.info/) for unit and system tests along with [simplecov](https://github.com/simplecov-ruby/simplecov) for coverage support 
- [Capybara](https://github.com/teamcapybara/capybara) with headless [Selenium](https://www.selenium.dev/documentation/en/) integration tests and a pre-configured [CircleCI](https://circleci.com/) config ready to go. See `spec/system` for an example. 

## Getting Started

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Node.js](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Redis](https://redis.io/)
- [ChromeDriver](https://chromedriver.chromium.org/)

### Installation

Make sure you've installed the dependencies above then:

Fork the repo:

    git clone git@github.com:darokel/bento.git

Set up your machine:

    ./bin/setup

Make sure the tests pass:

    ./bin/rake

Start the server:

    ./bin/dev

Go and build!

## Deploying

This repo comes with a 1-click deployment option to Heroku:

<p>
  <a href="https://heroku.com/deploy?template=https://github.com/darokel/bento/tree/master" alt="Deploy to Heroku">
    <img alt="Deploy" src="https://www.herokucdn.com/deploy/button.svg"/>
  </a>
</p>

There are also some scripts available to help with deploying to Heroku and setting up review apps. 

See [DEPLOYMENT.md](DEPLOYMENT.md) for more info on using the template with Heroku.

Alternatively, you're able to deploy this to any platform of your choice. 

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Suspenders](https://github.com/thoughtbot/suspenders)
