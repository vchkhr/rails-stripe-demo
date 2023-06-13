# Rails Stripe Demo

Based on [Awesome Compose](https://github.com/docker/awesome-compose/blob/master/official-documentation-samples/rails/README.md).

Ruby version: 3.2.1.

Ruby on Rails version: 7.0.4.2.

## Start the app

```bash
docker compose build
docker compose up
```

## Stop the app

```bash
docker compose down
```

## Rebuild the app

If you make changes to the Gemfile or the Compose file to try out some different configurations, you need to rebuild. Some changes require only `docker compose up --build`, but a full rebuild requires a re-run of `docker compose run web bundle install` to sync changes in the Gemfile.lock to the host, followed by `docker compose up --build`.
