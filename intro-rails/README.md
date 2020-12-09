notes for intro to rails: 


Documentation: https://guides.rubyonrails.org/ 



suggested order of operations

setting up my table (migrations)
set up Active Record models 
seed my database 
test in console- my association should be correct 

THEN 
build a controller with actions 
test a STATIC template 
add dynamic data 
test often code a little bit at a time 




MVC 
Model View Controller 

lifecycle of HTTP request

1. client makes a request (URL)
2. request goes to routes (so we MUST have a route)
3. from route, controller
4. from controller, a controller action (action is just a method in a controller in rails)
5. in controller action, we can do some logic, set up instance variable so we can pass that data to where? 
6. views - > .html.erb, by default the template must match the method name 


HTTP verbs 
GET - ask for data
POST - sending data to create a new resource 
PATCH - sending data to update a resource 
DELETE - sending data to delete a resource 


