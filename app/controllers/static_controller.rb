class StaticController < ApplicationController
  def welcome
  	render :welcome
  end

  def contact
  	render :contact
  end

  def about
  	render :about
  end
end
