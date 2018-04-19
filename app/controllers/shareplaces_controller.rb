class ShareplacesController < ApplicationController

  def index
  end

  def show
     @city = City.find(params[:id])
     @posts = @city.posts
  end

  def new

  end

  def create

  end

  def search
     @city = City.find(params[:city_id])
     @posts =  @city.posts.where(tag: params[:keyword])
     render :show
  end
end
