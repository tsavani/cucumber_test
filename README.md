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

#### Testing Rspec with Selenium
    
    $ Add below gem into gemfile: 
       gem 'capybara'
       gem "selenium-webdriver"
       gem 'chromedriver-helper'

    $ Add below code into rails_helper.rb 

       require 'capybara/rspec'
       require 'capybara/rails'

    $ To Set default browser for test suits, Add below code into rails_helper.rb
  
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
      end

    $ Download CromeDriver from below link:
  *    [Crome-Driver](http://chromedriver.storage.googleapis.com/index.html?path=2.15/)
    $
      Copy Cromrdriver.exe to C:\RailsInstaller\Ruby2.0.0\bin folder 
           
    $ Run : rspec spec\

#### How to generate reports
	
  1) Rails Best Practices

  	$ Add gem : gem 'rails_best_practices', '1.2.0' into gemfile
  	$ bundle install
    $ bundle exec rails_best_practices -f html
  
  It will generate file on root path.

  2) Generating Brakeman report

  	$ Add gem : gem 'brakeman' into gemfile
  	$ bundle install
    $ bundle exec brakeman -o brakeman_report.html	

  It will generate file on root path.

  3) Generating Rspec Coverage report

  	 $ Add gem :  gem 'simplecov' into gemfile
  	 $ bundle install
  	 $ Add below command in rails_helper.rb file

  	 	require 'simplecov'
			SimpleCov.start 'rails' do
		end

     $ bundle exec brakeman -o brakeman_report.html
   It willl generate 'Coverage' folder on root path.

#### How to use Gaurd
    
     $ Prerequisite :
        $ install Livereload into your browser
        * [How to install livereload](http://livereload.com/extensions/)
     $ Add following gem into gemfile
        $  gem 'guard-rspec'
        $  gem 'guard-livereload'
     $ bundle install
     $ open new Comand Prompt
     $ Run : guard or bundle exec guard
    
Read More About Gaurd:
   * [Live demo](http://code.tutsplus.com/tutorials/guard-is-your-best-friend--net-31021)
   * [Gaurd Commands](https://github.com/guard/guard/wiki/List-of-Guard-Commands)
   * [Github](https://github.com/guard/guard)
   

        
