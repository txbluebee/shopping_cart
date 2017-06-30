# Commerce Site(Lily's shopping heaven)

#### Ruby on Rails Basics Independent Project, 06/30/2017

#### By Brian Fan

## Description

Commerce site is a website that allows administrator to add, edit, delete product info. And user will be able to see the list of products and individual product detail and add a review and give a rating to the product.

### Core Functionality
* _product_
- [x] Site admins should be able to add, update and delete new products.
- [x] Users should be able to click an individual product to see its detail page.
- [x] Users should be able to add a review to a product.
* _Scope_
- [x] The product with the most reviews.
- [x] The three most recently added products.
- [x] All products made in the USA for buyers that want to buy local products.
* _Validation_
- [x] All fields should be filled out, including rating.
- [x] Rating can only be an integer between 1 and 5.
- [x] The review's content_body must be between 50 and 250 characters.
* _Seeding_
- [x] project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.


### Further Exploration
- [] Custom CSS styling
- [] Add validation to product cost
- [] show the product's average rating

## Prerequisites & Installation

* install rails gem,  [instructions](https://www.learnhowtoprogram.com/rails/ruby-on-rails-basics/rails-setup-and-structure).
* install Postgres followed by the [instructions](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef).
* `git clone https://github.com/txbluebee/commerce_site`
* `cd commerce_site`
* `bundle install`
* Open new tab in the terminal (Alt +T) and run the following command
* `postgres`
* `rails db:create`
* `rails db:migrate db:test:prepare`
* `rails db:seed`

## Running / Development

* `rails server`
* Visit your app at [http://localhost:3000](http://localhost:3000).

## Technologies Used

_HTML_

_SCSS_

_Bootstrap_

_Ruby_

_Ruby on Rails_

### License

Copyright (c) 2017 Brian Fan
The website is licensed under the MIT license.
