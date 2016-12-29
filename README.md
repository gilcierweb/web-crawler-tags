# Web Crawler Tags

Simple web crawler tags content h1, h2, h3, h4, h5, h6, link.

![ScreenShot](https://raw.github.com/gilcierweb/web-crawler-tags/master/app/assets/images/print.png)

Video demo Youtube:

[![Web Crawler Tags](http://img.youtube.com/vi/wJa0Dqr1Iqo/0.jpg)](https://youtu.be/wJa0Dqr1Iqo "Web Crawler Tags")

```shell
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

rails server

```

http://gilcierweb.com.br