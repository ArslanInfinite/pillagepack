Specifications for the Sinatra Assessment

Specs:

 [x]Use Sinatra to build the app 
Done.

 [x]Use ActiveRecord for storing information in a database

Done. 

 [x]Include more than one model class (e.g. User, Post, Category)

I have five models, three for classes and two join tables. 

 [x]Include at least one has_many relationship on your User model (e.g. User has_many Posts)

 User has many Packs. User has many Items. Pack has many Items. Item has many Users. 

 [x]Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)

Items belong to a Pack. Items belong to a User. Packs belong to a User. 

 [x]Include user accounts with unique login attribute (username or email)

Done in ApplicationController and UserController. 

 [x]Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying

Done in ItemsController. 

 [x]Ensure that users can't modify content created by other users

Done in ItemsController. 

 [x]Include user input validations

Dont in UsersController. 

 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)


 [x]Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Done

Confirm

 [x]You have a large number of small Git commits

 [x]Your commit messages are meaningful

 [x]You made the changes in a commit that relate to the commit message

 [x]You don't include changes in a commit that aren't related to the commit message
 