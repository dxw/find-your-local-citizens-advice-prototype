# README

## Set up

```
brew install postgresql
gem install bundler
bin/rails db:prepare
```

Ask for and set the following environment variable in `/.env`:

```
EXTERNAL_DATABASE_URL="postgres://postgres:@x.x.eu-west-2.rds.amazonaws.com/locations"
```

## Start

```
bin/rails server
```

Visit the following in your browser:

* External Postgres backed search: <http://localhost:3000/external_postgres_search/M350LY>
* Internal Postgres backed search: <http://localhost:3000/internal_postgres_search/M350LY>
* DynamoDB backed search: <http://localhost:3000/dynamo_search/PO211LD>
