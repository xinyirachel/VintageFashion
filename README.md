
# Vintage Fashion

## About Vintage Fashion

Businesses are shutting down due to covid-19. However, online business is booming. Buying online is a shift in consumer behavior, and online business will forward many years in future. The consumers behaviors are likely to be changed permanently. It's important to have an online store for every business.

As the world faces this covid 19 pandemic, clothing stores are studying how the pandemic situation is giving impact to fashion industry. Retailers are shutting down their physical store all over the world, which motivating people to buy clothes online instead because people are forced to stay at home for long time. 

This app can save vintage second-hand clothing business, and move this kind of business online.  The app is a online vintage clothing store. People who don't want to go out to buy vintage clothes or giving their clothes to vintage store can use this app to buy or sell their old clothes. 


## A link (URL) to your deployed app

View the website [here](https://vintage-fashion.herokuapp.com/).

## A link to your GitHub repository

View the source code and version control repository [here](https://github.com/xinyirachel/VintageFashion).

## Description of your marketplace app (website)

### Purpose

The web application Vintage Fashion has been created as a platform to help buyer and seller do second-hand clothes trading online.

### Features
* Users can view all listings but if they want to post anything they need to sign in. They can sign up an account to do that. 

* Users can create a list with their product information and edit/delete it. They cannot make changes to other people's post. 

* The app also has payment system, user can click "buy" button to go to payment information page, then enter their card information. They can see the "payment sucessful" page if they made a sucessful payment.

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

## User stories
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

## Detail any third party services
* Heroku: Heroku is a cloud Platform as a Service. This app is being deployed on Heroku and it is deployeding with Git, which means the app has been pushed on Github and the app on git hub repository is associating with Heroku. Documents in app like the static images are complied, stored and deployed throught Asset Pipeline.
* Stripe: Stripe is also a gem. Stripe API allows this app to acess the functionality of Stripe. The "buy" button on the page showing a certain product of this app link to the Stripe payment service. Customer can fill out their payment information on that page and the transcation they made will show on the dashboard of a Stripe testing account. 
* Ultrahook: The app also utilise webhook, a HTTP push API, to let Stripe make http request to app when buyer see a successful check out. Ultrahook is a simple too that connect endpoints. This is a way for stripe to send HTTP request to Vintage Fashion because Stripe can listen for the internal event and when the event happens, Stripe send a HTTP request. This 
