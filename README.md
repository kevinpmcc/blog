# Blog Caching Playground

# Welcome to our caching learning session 👋 
This session will primarily be hands-on playing with fragment caching in Rails. 

## Setup  
<code>git clone https://github.com/kevinpmcc/checkout.git && cd blog</code>
<code>rake db:setup</code>
<code>bundle install</code>

## Your task
As the webmaster of the internets favourite Game Of Thrones themed blog you have been seeing an increase in traffic. Your servers are struggling and users are complaining that sometimes its take almost half a second to see a page! You have been hearing about caching and want to see if you could benefit from it on the articles#index page. 


Lets see how fast you can get the page to load under the following conditions using only caching and caching related code changes. No other optimizations.


1. Loading /articles page when nothing has changed.

2. Loading /articles when a new article has been posted (/articles/new)  

3. Loading /articles when an article has its title changed  (edit link)

4. Loading /articles when a new comment appears on an article


## Measuring speed
You can use the output in the logs 

## Useful resources 
Sections 1.3 Fragment Caching, and 1.4 Russian Doll Caching
[Fragment Caching Rails Guide](https://guides.rubyonrails.org/caching_with_rails.html#fragment-caching)  
These sections contain everything we need for this task.  


## Post task topics
What do you imagine the cache method in Rails looks like?  

What does the cache store look like, what is the key value pair?  

Looking at our PDP page how many places can we see that could potentially be cached and what would their keys be based on?  
