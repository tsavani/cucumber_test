Cucumber Test(TDD)
=============

#### Development setup

    $ git clone https://github.com/twinks14/cucumber_test.git
    $ cd cucumber_test
    $ bundle install
    $ bundle exec rake db:setup
    $ bundle exec rails s
   

#### Testing

    The testing suite uses 'cucumber' for matchers and dependencies.

    To run the tests:

    1. cucumber features\

#### How to generate reports
	
  1) Rails Best Practices

  	$ Add gem : gem 'rails_best_practices', '1.2.0' into gemfile
  	$ bundle install
    $ bundle exec rails_best_practices -f html
  
  It will generate file on root path.

  2) Generating Brakeman reports

  	$ Add gem : gem 'brakeman' into gemfile
  	$ bundle install
    $ bundle exec brakeman -o brakeman_report.html	