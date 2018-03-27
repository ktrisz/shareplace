class ShareplacesController < ApplicationController

  def index
  end

  def show
     @city = City.find(1)
     @posts = Post.all
  end

  def new

  end

  def create

  end

end
