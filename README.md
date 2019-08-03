# README

ConactsApp is contacts management app. It can be used in offices,schools and other such instutions where the admins share the contacts among themselves. It includes all basic functionalities expected of a contacts app.

## Pre-requisite

 * Ruby 2.5+
 * Rails 5+

 ! Recommended to use ruby version-> 2.5.5 and rails version -> 2.5.3, else errors may occur while bundling due to version clash of ruby and thus gems      may not install.
 
 ! Either set the ruby version default to said versions or else change gem file to your verson and install bundles.  

## Installation and Working

* To get the app:-
  
  $ git clone https://github.com/srav001/ContactsApp.git
  
  $cd ContactsApp

* Install the bundles associated with the app:-
  
  $ bundle install

* Creating and migrating the databases and schema:-
  
  $ rake db:create
  
  $ rake db:migrate

* To add Groups :-
  
  $ rails c
  
  $ Group.create(name:"Enter the nameof the group you wish to create"

! To stop rails console
  
   ctrl + z

* To start the server:-
   
   $ rails s

* In browser, enter 'localhost:3000' to view the app. 

! To stop the server

  ctrl + c






