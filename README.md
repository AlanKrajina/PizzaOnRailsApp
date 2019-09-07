# PizzaOnRailsApp

The app provides a database and web interface for users to:

- Sign up, login or log out securely as user.
- This app includes a third party signup/login via Google thanks to the OmniAuth gem.
- User can see all pizzas but can only create, update, and delete (CRUD) his own created pizza. 
- User can browse pizzas via delivery address.
- User and pizza inputs are validated.

## Prerequisites

You will need to have the following installed on your computer in order to use RecipeManager:

- Ruby
- Rails 5+
- bundler

$ sudo gem install bundler

## Installation

To install this app onto your local machine:

- Fork and clone this repository with HTTPS

- Open your terminal and change to the local directory where you want to clone your repository and run:

$ git clone + git@github.com:AlanKrajina/PizzaOnRailsApp.git

$ cd PizzaOnRailsApp

- After checking out the repository, run the following code and automatically a file will be created or updated in your directory: Gemfile.lock with all the gems installed.

$ bundle install

- If you get any yarn errors run:

$ yarn install --check-files

- Set up the database:

$ rake db:create
$ rake db:migrate

The app uses the dotenv gem for environment variables. Create a .env file in the root of the app and add GOOGLE_CLIENT_ID=your_key and GOOGLE_CLIENT_SECRET=your_secret. If you do not already have a Google account, you will need to do so in order to get these keys through Oauth on Google for developers, in order to log in through Google.

## Usage

- Run rails s and navigate to http://localhost:3000.

$ rails s

- You can play with and create data via your console: rails c.

$ rails c

## Requirements

- Use the Ruby on Rails framework.

- Your models must:

-> Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

-> Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

- Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

- Use at least one has_many relationship on a User model and one belongs_to relationship on another model.

- You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

- Your application must provide standard user authentication, including signup, login, logout, and passwords.

- Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

- You must include and make use of a nested resource with the appropriate RESTful URLs.

-> You must include a nested new route with form that relates to the parent resource

-> You must include a nested index or show route

- Your forms should correctly display validation errors. a. Your fields should be enclosed within a fields_with_errors class b. Error messages describing the validation failures must be present within the view.

- Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

-> Logic present in your controllers should be encapsulated as methods in your models.

-> Your views should use helper methods and partials when appropriate.

-> Follow patterns in the Rails Style Guide and the Ruby Style Guide.

- Blog explaining the way requirements are met: https://alankrajina.github.io/pizzaonrailsapp_-_rails_project

- Short video demo with narration describing how a user would interact with application: 
