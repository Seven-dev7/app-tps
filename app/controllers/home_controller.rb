class HomeController < ApplicationController
  def index
  	@user = User.all
  end

  def private
  	
  end
end
