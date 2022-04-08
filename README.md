
# Vintage Fashion

## Identification of the problem you are trying to solve by building this particular marketplace app.

Businesses are shutting down due to covid-19. However, online business is booming. Buying online is a shift in consumer behavior, and online business will forward many years in future. The consumers behaviors are likely to be changed permanently. It's important to have an online store for every business.

As the world faces this covid 19 pandemic, clothing stores are studying how the pandemic situation is giving impact to fashion industry. Retailers are shutting down their physical store all over the world, which motivating people to buy clothes online instead because people are forced to stay at home for long time. 

This app can save vintage second-hand clothing business, and move this kind of business online.  The app is a online vintage clothing store. People who don't want to go out to buy vintage clothes or giving their clothes to vintage store can use this app to buy or sell their old clothes. 

## Why is it a problem that needs solving?

There are many online clothing business on the market, however, you can barely fina a online vintage fashion store. The app is not just for one fashion brand, it is for everyone who want to sell or buy old clothes without making physical contact to vintage store collecting old clothes. 

Vintage clothing cost less, prevent pollution and reduce material waste. It's fun to walk in a vintage store to explore your personal style and have fun. Purchasing vintage clothes shouldn't been stoped by pandemic, the market need this app to save this kind of business.

## A link (URL) to your deployed app

View the website [here](https://vintage-fashion.herokuapp.com/).

## A link to your GitHub repository

View the source code and version control repository [here](https://github.com/xinyirachel/VintageFashion).

## Description of your marketplace app (website)

### Purpose

The 2-way marketplace web application Vintage Fashion has been created as a platform to help buyer and seller do trading directly without the middle man.

### Features
* Users can view all listings but if they want to post anything they need to sign in. They can sign up an account to do that. 

* Users can create a list with their product information and edit/delete it. They cannot make changes to other people's post. 

* The app also has payment system, user can click "buy" button to go to payment information page, then enter their card information. They can see the "payment sucessful" page if they made a sucessful payment.

### Sitemap

![Sitemap](/docs/sitemap.jpg)

### Screenshots

Home page:

![Home](/docs/homepage.png)

Listings:

![Listings](/docs/listings.png)

Create listing:

![Create a list](/docs/createalist.png)

Show page:

![Show](/docs/show.png)

### Target audience
The target audience is people who want to sell their old clothese or buying vintage clothese to saving money (There are also people buy vintage for collection).

### Tech stack
The following tech stack were used:
- HTML
- CSS/SCSS
- JavaScript
- Ruby
- Ruby on Rails
- PostgreSQL
- Device 
- Bootstrap
- Stripe
- Ultrahook
- Heroku

## User stories for your app
1. As a user, I want to sign up a new account.
	So that I enter Email, Password, Password confirmation on Sign up page and then click on "Sign up" button
Accept criteria:
* Given a user is on SIgn up page
   And the user has entered Email, Password, Password confirmation
   When the user clicks on "Sign up" button
   Then a new user account is created
   
2. As a user, I want to login to my account.
	So I type in my username and password on Sign in page and then click on "log in" button
Acceptance criteria:
*	Given a user typed in correct username and password
	When the user clicked on "log in" button
	Then Home page is displayed

3. As a user, I want to create a listing.
	So I provide details of a listing on the "New Clothes for Vintage Fashion" and clicks on "Create Listing" button
Acceptance criteria:
*	Given a user is logged in
	And the user is on the "New Clothes for Vintage Fashion" page
	Then the user can select category from Category dropdown 
	And the user can enter Title, Price
	And the user can upload picture
	And the user can select Condition from Fair, Good, Excellent, Mint
	And the user can enter Description
	
*	Given a user is on the New Clothes for Vintage Fashion" page
	And the user has provided information of the clothes
	When the user clicks on "Create Listing" button
	Then "New item created!" page is displayed
	And the details of the created clothes is displayed on "New item created!" page

4. As a user, I want to view listings. So I click "All listings" button on Home page
Acceptance criteria:
*	Given a user is on Home page
	When the user clicked on "All listings" button
	Then the user should be directed to Listing page
	And listed clothes should be displayed on Listings page

5. As a user, I want to edit the clothes I created on Listing page.
	So I click on "Update" button on Listing page.
	
6. As a user, I want to purchase the clothes on Listing page.
	So I click on "Buy" button on Listing page.

## Wireframes for your app
![homepagenotlogin](/docs/3.png)
![homepagelogedin](/docs/4.png)
![listings](/docs/1.png)
![listingsphone](/docs/11.png)
![create a listings](/docs/2.png)
![create a listings phone](/docs/22.png)
![showpagelogedin](/docs/5.png)
![showpagenotlogin](/docs/6.png)
![showpagenotlogin phone](/docs/7.png)


## Explain the different high-level components (abstractions) in your app
The app developed on Rails based on MVC pattern. MVC divides the work of Vintage Fashion into models, views and controller. Models work behind the scenes at high level, views face to buyer and sellers, and controller is responsoble for accepting input and converting inout to commands for models and views.

Take controller for home.page as an example. Firstly I generate a new controller named pages. Then Ithe app has pages_controller.rb and a folder named pages under view folder. Then in route.rb, I defined root route. 
![root route](/docs/rootroute.png)

Next this app need methods in controller since controller is about implementation. I defined a method named index. 
![page controller](/docs/pagecontroller.png)

The app will pass the view, so a template for interactive request will be created, which is under pages folder, and the document is home.html.erb. The app pass this html.erb doc as view to user. The methods in controller can also access to model, it give the view access to the model. Model mantain relationship between database and objects. A class called ActiveRecord is inherited from by each of the app's models.


MVC model make the app easy to maintenance and improved the ability for the app to grow. It also provide reusability, like a model can be reused by many views. Rails implement though a class inheritant Active Record class. Active Record class allow this app to have data saves in database and have methods need to operate that data. Ruby code can be used to inteact with model. Active reocrd will translate that into valid SQL statements. For example, a model, a column in databse called listing with atributes like title, condition and etc. This is a subclass of ActiveRecord class.


## Detail any third party services that your app will use
* Heroku: Heroku is a cloud Platform as a Service. This app is being deployed on Heroku and it is deployeding with Git, which means the app has been pushed on Github and the app on git hub repository is associating with Heroku. Documents in app like the static images are complied, stored and deployed throught Asset Pipeline.
* Stripe: Stripe is also a gem. Stripe API allows this app to acess the functionality of Stripe. The "buy" button on the page showing a certain product of this app link to the Stripe payment service. Customer can fill out their payment information on that page and the transcation they made will show on the dashboard of a Stripe testing account. 
* Ultrahook: The app also utilise webhook, a HTTP push API, to let Stripe make http request to app when buyer see a successful check out. Ultrahook is a simple too that connect endpoints. This is a way for stripe to send HTTP request to Vintage Fashion because Stripe can listen for the internal event and when the event happens, Stripe send a HTTP request. This 

## Describe your projects models in terms of the relationships (active record associations) they have with each other

Vintage Fashion has three models for the main functionality. 

1. Listing model is an important model for this app, because listing model is the source of interaction between  user model and category model. This model also associate with pictures. The association are: listing belongs to user, listing belongs to category.

2. Category model has one-to-many relationship with listing model. The association for the category model is that category has many listings. 

3. Device model, a gem, created the user model. Little change made to this model. The association for the user model is that user has many listings. 


![model1](/docs/model1.png)
![model2](/docs/model2.png)
![model3](/docs/model3.png)

## Discuss the database relations to be implemented in your application
Users and categories and listings have id bigint data types, because primary key must be unque and never repeats. Categories has many listings and category id is a foreign key in listings table, another foreign key for listing table is user id. They depend on each other. Databases use active record assosciations to create reationships between the different models. 

Refering to the ERD below. Listings table have all clothes, and each listing is about a cloth for user to buy or upload. It associate with users table though a foreign key, because a listing can only be create by one user. Asingle user can craete many listings, so they have a one to many relationship. Categories table is the same. Each one listing has one category, but category can has many listings.

## An ERD for your app
![erd](/docs/ERD.png)


## Provide your database schema design
![schema1](/docs/s.png)
![schema2](/docs/s2.png)
![schema3](/docs/s3.png)

## Describe the way tasks are allocated and tracked in your project
Trello was used to allocated and tracked tasks. Trello hass Lists and Cards for organise tasks in a flexible way.

The lists for tasks are as follows:

* To do: This list include tasks I will work in future.
* In progress: This list include tasks I am working on.
* Bugs: This list include blockers need to be fixed and possible errors need to be fixed or improved 
* Review: This list include tasks to be test or check or redo many times(like git commit)
* Done: Completed tasks cards will be moved to this list.

The label for all the cards are as follows:
* Code: Tasks relating to coding aspects of the app. 
* Design: Includes ERD and wireframe and UI UX design.
* Deployment: The taks relating to deployment to Heroku.
* Git: Tasks relating to version control.
* Other: Oher task like documentations and etc.

I find it's easier to set lists as working progress and card labels as work type rather than the other way around. Because it's easier to notice how much tasks left for you to manage your time to finish all of them. Workload can be estimated by how long a certain list is. 

View the Trello Board [here](https://trello.com/b/pOuEZyIL/vintage-fashion)
![trello](/docs/trello.png)