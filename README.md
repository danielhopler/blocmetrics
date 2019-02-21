# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Blocmetrics

An analytics app that users can use with their apps to track user activity.

#### User Sign-up and App Registration
Use `Devise` gem for user signup. Register your applications you wish to track using `name` and `url` attributes.

#### Tracking App Events
Add the below Javascript snippet to the apps you want to track events in: <br/>

```
var blocmetrics = {};

	blocmetrics.report = function(eventName) {
	   // #1
	   var event = {event: { name: eventName }};

	   // #2
	   var request = new XMLHttpRequest();
	   // #3
	   request.open("POST", "http://localhost:3000/api/events", true);
	   // #4
	   request.setRequestHeader('Content-Type', 'application/json');
	   // #5
	   request.send(JSON.stringify(event));
	}

```
- place the snippet above in your app : _app/assets/javascripts/application.js_
