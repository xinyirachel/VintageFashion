
# Vintage Fashion

## Identification of the problem you are trying to solve by building this particular marketplace app.

This app is a online vintage clothing store. People who don't want to go out to buy vintage clothes or giving their clothes to vintage store can use this app to buy or sell their old clothes.

## Why is it a problem that needs solving?

Nowadays, businesses are shutting down due to covid-19. However, online business is booming. This app can save vintage clothing business, and move this kind of business online. 

## A link (URL) to your deployed app

View the website [here](https://vintage-fashion.herokuapp.com/).

## A link to your GitHub repository

View the source code and version control repository [here](https://github.com/xinyirachel/VintageFashion).

## Description of your marketplace app (website)

### Purpose

The 2-way marketplace web application Vintage Fashion has been created as a platform to help buyer and seller do trading directly without the middle man.

### Features
Users can view all listings but if they want to post anything they need to sign in. They can sign up an account to do that. Users can create a list with their product information and edit/delete it. They make change to other people's post. They can enter their contact details and product describtion (information like condition or price can be entered too). 

####Application_controller
Extented from ActionController
It is the parent class of listings_controller and pages_controller
####Listings_controller
Defined method index, show, new, create, edit, update, destroy and etc. Connect view and model then user can do actions on page like show page.
####Pages_controller
This is for method about authentication
#### ApplicationRecord
A abstract class which is extended from ActiveRecord class
It is the parent class of Category class, Listing class and User class
####Category
Seed file been populate to database. There are 6 categories for listing items.
####Listing
 Listing has foreign key from user and category. It has enumarator that defines condition.
####User
Device generate most code about authentication

### Sitemap

![Sitemap](/docs/sitemap.jpg)

### Screenshots

Home page:

![Home](/docs/homepage.png)

Listings:

![Listings](/docs/listings.png)

Create listing:

![Create a list](/docs/createalist.png)

### Target audience
The target audience is Australian people who want to sell their old clothese or buying vintage clothese to saving money (There are also people buy vintage for collection).

### Tech stack
The following tech stack were used:
- HTML
- CSS/SCSS
- JavaScript
- Ruby
- Ruby on Rails
- Heroku
- PostgreSQL
- Device 
- Bootstrap

## User stories for your app
1. User can sign up an account
Accept criteria:
* Given a user is on SIgn up page
   And the user has entered Email, Password, Password confirmation
   When the user clicks on "Sign up" button
   Then a new user account is created
   
2. An existing user should be able to login 
Acceptance criteria:
*	Given a user typed in correct username and password
	When the user clicked on "log in" button
	Then Home page is displayed

3. User should be able to create listing of a clothes
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

4. User should be able to view listed items
Acceptance criteria:
*	Given a user is on Home page
	When the user clicked on "All listings" button
	Then the user should be directed to Listing page
	And listed clothes should be displayed on Listings page

5. User should be able to edit the clothes the he/she created on Listing page

## Wireframes for your app
![homepagenotlogin](/docs/3.png)
![homepagelogedin](/docs/4.png)
![listings](/docs/1.png)
![create a listings](/docs/2.png)
![showpagelogedin](/docs/5.png)
![showpagenotlogin](/docs/6.png)


## An ERD for your app

## Explain the different high-level components (abstractions) in your app
#### Active record
 Active record used to define Model. It helped with creating, updating and deleting Object records in database.
#### Active storage
Active storage helped with file implementing.  Developer can send file attachments a web app be automatically.
#### Device
Device is a Gem. This package bing the app a user authentication and authorization system.


## Detail any third party services that your app will use
In future development. The app may use some thrid party API.

## Describe your projects models in terms of the relationships (active record associations) they have with each other


## Discuss the database relations to be implemented in your application

## Provide your database schema design

## Describe the way tasks are allocated and tracked in your project

