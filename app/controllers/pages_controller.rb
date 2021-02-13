class PagesController < ApplicationController
  def home
    cookies[:fave_drink] = "beer" 
    cookies[:fave_color] = "blue"
    cookies[:fave_foods] = {:value => ["pizza","cheesecake","vindaloo"], :expires => Time.now + 600 }
    
    cookies[:count] = cookies[:count] ? cookies[:count].to_i + 1 : 1
    @count = cookies[:count]
    @fave_drink = cookies[:fave_drink]
    @fave_foods = cookies[:fave_foods] if cookies[:fave_foods]
    @fave_color = cookies[:fave_color]
    
    
  end

  def restricted

  end
end
