Course Notes:

### RAILS

Model => Are resources used to communicate with the tables in your application (backend)
View => What the users see in their browser (frontend)
Controller => The brains behind your application (backend)

Typical file structure: 

app -- controllers
    -- views
    -- models

From the course -- nice breakdown of MVC:

MVC - Model, View, Controller

-----

"General flow of Rails application:

-> Request made at browser

-> Request received at router of rails application

-> Request routed to appropriate action in a controller

-> Controller#action either renders a view template or communicates with model

-> Model communicates with database

-> Model sends back information to controller

-> Controller renders view"

----- 

Here's how to create a new controller form the Command line:
`rails generate controller [name_of_controller]` 

More info on each folder and file in a Rails application:
https://guides.rubyonrails.org/getting_started.html > see section 3.2