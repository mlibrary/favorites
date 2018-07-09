# Favorites

## Setup

### Ruby

Run a `bundle install` or a `bundle install --path=.bundle` as you prefer.

### Database

To run the favorites app, setup the database configuration.  You can use `config/database.yml.EXAMPLE` as an example.

Run migrations, i.e. `bundle exec db:migrate`.

## Developing

### Architecture

* Models: `lib/favorites/models`
* Business Logic: `lib/favorites/services`
* Presenters: `lib/favorites/presenters`
* Views: `lib/favorites/views`
* Controller: `lib/favorites/sinatra_app.rb`

### Data

There's no interface for creating favorites right now. We can work out some fixtures or sample data to include.
