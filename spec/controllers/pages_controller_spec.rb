require 'spec_helper'

describe PagesController do
  render_views # we manually insert this line to render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title, yo" do
      get 'home'
      response.should have_selector("title", # have_selector method in Rspec! :)
        :content => "Look, I said aliens are invading our planet... | ")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right contact title, yo" do
      get "contact" 
      response.should have_selector("title", 
        :content => "Look, I said aliens are invading our planet... | ")
    end
  end

  describe "get 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the proper about title, yo" do
      get "about" 
      response.should have_selector("title",
        :content => "Look, I said aliens are invading our planet... | ")
    end
  end
end
