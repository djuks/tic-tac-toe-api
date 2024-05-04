### Setup

To setup project on locale machine use following commands:

```
git clone git@github.com:djuks/tic-tac-toe-api.git
cd tic-tac-toe-api
docker-compose build
docker-compose run --rm api rails db:setup
docker-compose run --rm api rails db:migrate
```

Start server:

```
docker-compose up
```
## Development

Linters - checker:
```
docker-compose run --rm api rubocop
```
Linters - auto-fix:
```
docker-compose run --rm api rubocop -A
```
