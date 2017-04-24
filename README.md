Cut the Chi Website
==========================

## Interface requirements and features checklist:

#### Registration and Login system:
* Full Name
* Email with pacific.edu domain verification
* Password, preferribly encryption
		
##### Optionally:
* Email verification and password reset
* Way for non students to access bidding		

#### Bidding interface:
##### List candidates:
* Photo
* Name
* Description/quote/flair			
* Optionally filter by name or search by name

##### Bidding Form:
* Check for $5 increments
* Minimum bid	
* Maintain bid history in DB
* Optionally bid amount limiting	
			
#### Other Things to potentially include:
* Info about supported organization/link to org (must)
* Estimated money raised, countdown		
* Email notifications to bidder if they are outbid


## Webapp Information

A master of this app/website will exist at [jwagenet/cutthechi-rails](https://github.com/jwagenet/cutthechi-rails).
A demo will exist at [heroku:pacificcutthechi](http://pacificcutthechi.herokuapp.com/).

This app is partially based of the [Ruby on Rails Tutorial](http://www.railstutorial.org/book), however uses some differnet names, skips testing, and deviates after user sessions. This app also uses up to date versions of ruby, rails, and other rubygems.

If you would like to play along at home, set up an environment with with ruby 2.3.x and rails 5.0.x. additional rubygems used are in the Gemfile. The Rails Tutorial can help get you set up, but be mindful of the versions you use. Good luck on Windows.

To get up and running you should navigate to the downloaded git repo of the app and:

```
$ bundle install --without production
$ bundle update
$ bundle exec rake db:setup
$ bundle exec rake db:seed
$ bundle exec rake csv:Import_Candidates
$ rails server
```
AC
The local server can be accessed at [localhost:3000](http://localhost:3000).


## Usage

Reset database and start from scratch:
```
$ bundle exec rake db:reset
```

Seed the database with data. This may happen suring db:reset. The seed data us used to add or modify the admin user. Can also be used to add or modify any other db entrys if necessary.
```
$ bundle exec rake db:seed
```

Import candidates csv file. Build list of candidates in excel/google sheets. Column Format:
Full Name, first initial lastname, comment (limit 60 char or something), commitment (1: 1 week, 2: half week, 0 none/not used)
ex:
Jonathan Wagenet,jwagenet,"My hair fights back.",0
```
$ bundle exec rake csv:Import_Candidates
```
Load this this with:
```
$ rails server
```
Only works once.

Regular user sees their own bids on their user page
Admin user sees all bids, all users, and top bids in addition to own bids. Can delete any of the above

## Things that need to be done
* Update the content in app/views/statics/index, event, candidates/index, users/new, layouts/application
* Get new list of candidates
* Take new photos. Risize and crop to 600x450px. Try to use a consistant background, good lighting, and subject size.



###### Default list for posterity
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
