# Web Crawler Tags

This README would normally document whatever steps are necessary to get the
application up and running.


cd web-crawler-tags

rails generate scaffold sites url:string:index 
rails generate scaffold tags h1:text h2:text h3:text h4:text h5:text h6:text link:text site:references

rails routes

 Prefix Verb   URI Pattern               Controller#Action
 home_index GET    /home/index(.:format)     home#index
     sites GET    /sites(.:format)          sites#index
           POST   /sites(.:format)          sites#create
  new_site GET    /sites/new(.:format)      sites#new
 edit_site GET    /sites/:id/edit(.:format) sites#edit
      site GET    /sites/:id(.:format)      sites#show
           PATCH  /sites/:id(.:format)      sites#update
           PUT    /sites/:id(.:format)      sites#update
           DELETE /sites/:id(.:format)      sites#destroy
      tags POST   /tags(.:format)           tags#create
       tag GET    /tags/:id(.:format)       tags#show
      root GET    /                         home#index


