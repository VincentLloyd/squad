# SQUAD APP
---
## User Stories

### Personal Trainers
---
1. To build a large client base, as a personal trainer, I want to be visible to a large audience of potential clients.

2. To attract result oriented clients, as a personal trainer, I want the results achieved by my current clients to be publicly available.
---
3. To help motivate my clients, as a personal trainer, I want to be able to compare my group's progress against that of other groups.

4. In order to differentiate myself from other personal trainers, as a PT, I want potential clients to be able to choose me based on the type of exercise experience/expertise I specialise in.
---
5. In order to differentiate myself from other personal trainers, as a personal trainer, I want to be able to determine the key characteristics of my groups (e.g. price, exercise format, group size, admission criteria, etc.)

6. In order to maximise my earning potential, as a personal trainer, I want to be able to lead multiple groups.
---
## User Stories

### Exercisers
---
1. To maximise the value of my workout experience, as an exerciser, I want to workout with people of a similar physical capability to mine.

2. To maximise my choice, as an exerciser, I want to be able to find PTs/groups based on a wide range of metrics (e.g. geography, group size, training format, rating, etc.)
---
3. To help me choose, as an exerciser, I want to be able to read reviews of a group and/or trainer of interest.

4. To avoid boredom, as an exerciser, I want to be able to be a member of many different groups simultaneously.
---
5. To keep track of my progress, as an exerciser, I want to be able to see my physical performance charted over time.
---
## Product Features



---
## Design / Planning

###Schema

Table explanations and design justification:

##### Users

* All app users have a single User record, created during initial signup.

#####Profiles
* All Users have a single Profile. This record is created and populated as part of initial signup.


##### CaptainProfiles

* All Users who are also Captains, and only Users who are also Captains, have a single CapainProfile. This record can be created at any time after initial signup.

##### ExerciseTypes

* ExerciseTypes associated with CaptainProfiles (not Squads). This structure allows members to commission a captain(s) to lead a session(s) outside his/her advertised classes.

### Tools

##### [Axure](https://www.axure.com/)

## Ruby Gems

In addition to those that make up the default set bundled with a vanilla Rails app, SQUAD makes use of the the following Ruby gems.

### Development

##### [annotate models](https://github.com/ctran/annotate_models)

* Via a single CLI command, this gem prepends descriptive headers to the app's model and routes files.

##### [better errors](https://github.com/charliesome/better_errors) and [binding of caller](https://github.com/banister/binding_of_caller)

* These gems supplant the Rails default error page with one featuring improved formatting an advanced stack trace and an integrated REPL. This additional functionality allows the developer to better comprehend and interactively investigate unhandled exceptions and the application environment, without leaving the browser.

##### [bootstrap-rubygem](https://github.com/twbs/bootstrap-rubygem)

* CSS styling.

##### [letter opener](https://github.com/ryanb/letter_opener)

##### [simple form](https://github.com/plataformatec/simple_form)

### Testing

#####[database cleaner](https://github.com/DatabaseCleaner/database_cleaner)

#####[factory girl rails](https://github.com/thoughtbot/factory_girl_rails)

##### [faker](https://github.com/stympy/faker)

* Perform app/model testing using purpose generated data.

##### [rspec-rails](https://github.com/rspec/rspec-rails)

* RSpec testing framework.

### Production

  ##### [active admin](https://github.com/activeadmin/activeadmin)

* Admin.

##### [devise](https://github.com/plataformatec/devise)

* A gem to perform user authentication and session management.

##### [exception notification](https://github.com/smartinez87/exception_notification)

* This gem allows a developer to promptly respond to user troubles by sending email notifications as unhandled exceptions are encountered.

##### [turbolinks](https://github.com/turbolinks/turbolinks)

* User navigation (the speed at which requested pages are served) is sped up by this gem.
##### [bootstrap-datepicker-rails](https://github.com/Nerian/bootstrap-datepicker-rails)

* As suggested by the name, a bootstrap datepicker for rails.
* Config [options](https://bootstrap-datepicker.readthedocs.io/en/stable/options.html#orientation)

### Security

##### [brakeman](https://github.com/presidentbeef/brakeman)

* This static code analyser is used prior to deployment and scans a Rails application for a wide range of common vulnerabilities.

##### bundler-audit



## Configuration

### Carrierwave
* Two uploaders to handle the uploading of full size images (i.e. squad images) and the coversion of some of those to thumbnails (i.e. profile avatars).
  * [Carrierwave; multiple uploaders or just one?](https://stackoverflow.com/questions/4796709/carrierwave-multiple-uploaders-or-just-one)




##References

Articles and other resources that were of some use at sometime. of the development process.

####Model

* [Increase Rails Performance with Database Indexes](http://www.rakeroutes.com/blog/increase-rails-performance-with-database-indexes/)
* [Rails Guides - Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* [Includes vs Joins in Rails: When and where?](http://tomdallimore.com/blog/includes-vs-joins-in-rails-when-and-where/)
* [Brush up Your Knowledge of Rails Associations](https://www.sitepoint.com/brush-up-your-knowledge-of-rails-associations/)

#### Routes

[Cleaning up a Rails routes file](https://thomasleecopeland.com/2014/10/07/cleaning-up-a-rails-routes-file.html)

#### General

* [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

####Testing

* [Testing with Rspec, FactoryGirl, Faker and Database cleaner](http://sundayadefila.com/index.php/2016/08/01/testing-with-rspec-factorygirl-faker-and-database-cleaner/)
* [Configuring database_cleaner with Rails, RSpec, Capybara, and Selenium](http://www.virtuouscode.com/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/)
  * Explains the purpose of the code  in the database_cleaner.rb config file
* [Setting up Rails testing with rspec, devise, and the gang](http://willschenk.com/setting-up-testing/)
* [Working Effectively with Data Factories Using FactoryGirl](https://semaphoreci.com/community/tutorials/working-effectively-with-data-factories-using-factorygirl)

#### Presentation

* [Typora](https://typora.io/)
  * Lightweight markdown editor
* [GitPitch](https://gitpitch.com/)
  * Markdown based presentation


#### Rails Organisation
* [Organizing CSS & Sass in Rails](http://www.mattboldt.com/organizing-css-and-sass-rails/)

## New Concepts / Terms / Technologies

* Middleware
* MVC
  * Model (ActiveRecord)
  * View (ActionView)
  * Controller (ActionController)
* Rack
* Sprockets

~~~ app/env.rb
puts 'hello world'
~~~

## Future Features

'Soft delete' for user accounts & captain profiles (reactivation?)

* [How to “soft delete” user with Devise](https://stackoverflow.com/questions/5140643/how-to-soft-delete-user-with-devise)
* [How to: Soft delete a user when user deletes account](https://github.com/plataformatec/devise/wiki/How-to:-Soft-delete-a-user-when-user-deletes-account)