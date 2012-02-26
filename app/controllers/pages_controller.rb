class PagesController < ApplicationController



  def show
   # raise StandardError, params.inspect #raises a standard errorin ruby
   # raise StandardError, params[:uber_page]
   render params[:uber_page] 
   # render "home or contact or whatever the value of :uber_page is as a view""
   # render "home"  --> "/app/views/pages/home.html.erb"
   # render "value_of_uber_page" --> "/app/views/pages/value_of_uber_page.html.erb"
    
   # now we need to fetch the view for uber_page
  end


  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

end
