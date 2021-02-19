# README

Rails Url Shortener API

## Setup

`docker-compose up --build`

To run tests: `bundle exec rspec`

## Endpoints

* GET /urls
  * lists top 100 most clicked urls
* GET /s/:slug
  * returns origin url from slug
* POST /urls
  * saves a new url
  * body: origin
* PUT/PATCH /urls/:id
  * updates url
  * body: origin, clicks
* DELETE /urls/:id
  * deletes a url
