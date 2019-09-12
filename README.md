# Blog Caching Playground

# Welcome to our caching learning session 👋 
This session will primarily be hands-on playing with fragment caching in Rails. 

##Setup  
<code>git clone https://github.com/kevinpmcc/checkout.git && cd blog</code>
<code>bundle install</code>

##Your task
As the webmaster of the internets favourite Game Of Thrones themed blog youve been seeing an increase in traffic. Your servers are struggling and users are complaining that sometimes its take almost half a second to see a page! Your boss has heard about caching and wants to see if you could implement it in the articles#index page. 


They would like to see how fast you can get the page to load under the following conditions.



1. Loading the page when nothing has changed.

2. When a new article has been posted (/articles/new)  

3. When an article has its title changed 

4. When a new comment appears on an article


##Useful resources 
Sections 1.3 Fragment Caching, and 1.4 Russian Doll Caching
[Fragment Caching Rails Guide](https://guides.rubyonrails.org/caching_with_rails.html#fragment-caching)  
This section contains everything we need for this task.  


#Post task topics
What do you imagine the cache method in Rails looks like?  

Looking at our PDP page how many places can we see that could potentially be cached and what would their keys be based on?
