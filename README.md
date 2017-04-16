# README

Prepare your environment:

	* `docker-compose build`
	* `docker-compose run web rails db:create db:migrate`
	* `docker-compose up`
	* `open http://localhost:3000`

Push on Heroku:

	* `heroku container:push web --app muxu-delivery`
