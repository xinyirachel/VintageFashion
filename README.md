
# Vintage Fashion

I am re-making this app at the moment. 

The live demo of  1.0 version is:[here](https://vintage-fashion.herokuapp.com/)

The content in Github vintage-fashion repository are the files for 2.0 ver, and the development is in-progress.

### A link (URL) to your deployed app

View the website - v2.0 coming soon

### A link to your GitHub repository

View the source code - v2.0 coming soon

## About Vintage Fashion

A prototype non-profit website on which users can log in, upload, buy, exchange and sell their old clothes. The app was created in Ruby on Rails with a PostgreSQL database and deployed using Heroku. It demonstrates CRUD implementation, Stripe payment integration and user authentication with permissions.

## Features
* Users can view all listings but if they want to post anything they need to sign in. They can sign up an account to do that. 

* Users can create a list with their product information and edit/delete it. They cannot make changes to other people's post. 

* The app also has donation to developer system, user can click the button to go to payment information page, then enter their card information. They can see the "payment sucessful" page if they made a sucessful payment.(Coming soon)

## Tech stack
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

## Third party services
* Heroku: This app is being deployed on Heroku. Documents in app like the static images are complied, stored and deployed throught Asset Pipeline.
* Stripe: Stripe API allows this app to acess the functionality of Stripe. The "buy" button on the page showing a certain product of this app link to the Stripe payment service. Customer can fill out their payment information on that page and the transcation they made will show on the dashboard of a Stripe testing account. 
* Ultrahook: This app utilises webhook, a HTTP push API, to let Stripe make http request to app when buyer see a successful check out. Ultrahook is a simple too that connect endpoints. This is a way for stripe to send HTTP request to Vintage Fashion because stripe can listen for the internal event. When the internal event happens, Stripe will send a HTTP request.
