Cut the Chi 2014 Website
==========================

##Interface requirements and features checklist:

####Registration and Login system:
* Full Name
* Email with pacific.edu domain verification
* Password, preferribly encryption
		
#####Optionally:
* Email verification and password reset
* Way for non students to access bidding		

####Bidding interface:
#####List candidates:
* Photo
* Name
* Description/quote/flair			
* Optionally filter by name or search by name

#####Bidding Form:
* Check for $5 increments
* Minimum bid	
* Maintain bid history in DB
* Optionally bid amount limiting	
			
####Other Things to potentially include:
* Info about supported organization/link to org (must)
* Estimated money raised, countdown		
* Email notifications to bidder if they are outbid


##Webapp Information

A master of this app/website will exist at [jwagenet/cutthechi-rails](https://github.com/jwagenet/cutthechi-rails).
A demo will exist at [heroku:salty-crag-7766](http://salty-crag-7766.herokuapp.com/).

This app is partially based of the [Ruby on Rails Tutorial](http://www.railstutorial.org/book), however uses some differnet names, skips testing, and deviates after user sessions. This app also uses up to date versions of ruby, rails, and other rubygems.

If you would like to play along at home, get an environment set up with ruby 2.x or 2.1.x and rails 4.1.4. additional rubygems used are in the Gemfile. The Rails Tutorial can help get you set up, but be mindful of the versions you use. Good luck on Windows.

To get up and running you should navigate to the downloaded git repo of the app and:

```$ bundle install --without production
$ bundle update
$ bundle exec rake db:migrate
$ bundle exec rake csv:Import_Candidates
$ rails server```

The local server can be accessed at [localhost:3000](localhost:3000).




######Default list for posterity
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
