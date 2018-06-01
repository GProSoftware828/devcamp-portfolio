# Ruby on Rails Application for User Profiles

This application allows users to sign in and add both blog posts and also a portfolio image with notes. The topics are displaying the different applications and software languages the user wishes to show to other site users as a forum posting.

###Introduction

This application three controllers, 8 models, a dozen migration files, and the following gems:

* [devise](https://rubygems.org/gems/devise)

* [petergate](https://rubygems.org/gems/petergate)

* [bootstrap](https://rubygems.org/gems/bootstrap)

* [byebug](https://rubygems.org/gems/byebug)

* others

###Versions

####Ruby- 2.4.0

####Rails- 5.1.4

###Syntax

Dot notation is RECOMMENDED over bracket notation for method calls:

**For Example-**

>def first_name
	self.name.split.first
end

>def last_name
	self.name.split.last
end

The model and controller classes inherit from the application class:

**For Example-**

> class User < ApplicationRecord

The views utilize embedded ruby for the models:

**For #Example-**

>     <%= yield %>

###Configuration-

This application is hosted in development locally and in production in Heroku with a Postgres DB.

Ready for use upon download of directory.