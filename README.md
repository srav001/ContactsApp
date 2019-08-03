# README

ConactsApp is contacts management app. It can be used in offices,schools and other such instutions where the admins share the contacts among themselves. It includes all basic functionalities expected of a contacts app.

## Prerequisite
 * Ruby 2.5+
 * Rails 5+

## Installation
```
To get the app:-
$ git clone https://github.com/srav001/ContactsApp.git
$cd ContactsApp

Install the bundles associated with the app:-
$ bundle install

Creating and migrating the databases and schema:-
$ rake db:create
$ rake db:migrate

To add Groups :-
$ rails c
$ Group.create(name:"Enter the nameof the group you wish to create"

!To stop rails console
ctrl + z

To start the server:-
$ rails s

In browser,enter 'localhost:3000' to view the app

!To stop the server
ctrl + c

```




