# This README.md is for our mod 2, project. 

Our application is named _"What's for lunch?"_

It is running Ruby version *2.6.1*

Our application depends on *SQLite* for its database tables and *Rails*. 

Using this web application gives you a random lunch suggestion to try and review later if you wish. 

* `git clone` this repo into your terminal within the directory of your choosing.

* `cd` into the `Whats_for_lunch_app` directory.

* If you are using _VScode_ and have your `PATH` set correctly, you should be able to type `code .` within your terminal which will then open the application contents. 

* Run `rails s` in your terminal (Make sure you have _ruby_ and _rails_ installed).

* This will direct you to your localhost:. 

## Application 

You can _sign in_ or _sign up_. 

Afterwards you're directed to choose a food category that you want a random suggestion from. 
On this same page you can view previously made reviews for a restaurant you were given prior. 

If you decide to leave a review, you will be prompted with a rating and comment box.

Entering in this information will then direct you to a page where you may decide to edit or delete your review. It also gives you the choice to view all previous reviews made to the restaurant you also left one for. For curiosity there is a average rating given for each restaurant based on ratings made by all users. 

Clicking _profile_ will lead you back to your user page where you may start all over again with receiving a random restaurant from your category, or you can choose a previous made review, which again lets you _edit_ or _delete_ them. 

_New_ immediately directs you category choice page from where ever you are within the application. 
_Logout_ exits you from your profile.

------
### Our Process


1. We started with writing and drawing out our domain models. This had taken a bit of time as we needed at least 5 tables to work from. We inevitably ended with 6 tables to build out the features we desired. Writing out the attributes, join tables, and CRUD features. 

2. Since we are using rails, we had to start with our _MVC_ pattern (model, view, controller). Keeping _RESTful_ methods in mind, we built out our pages. Going back and forth making sure our views would render at least a white page first. 

3. When it came to seeding our data, we used the _Faker Gem_ to test our relationships between our tables. This also enabled us to test out our application as we were building it (picking a category, starting the roulette, creating new user data, etc).

4. We wrote methods within our models and controllers, linked pages, debugged when pieces weren't working, and used error handling from rails to get it running.

5. To get our _CSS_ working, we toyed with the _Bootstrap_ framework to see how it worked with our site. In the end we went with not using _Bootstrap_ and wrote our own _CSS_. 








