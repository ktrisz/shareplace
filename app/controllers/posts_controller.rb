class PostsController < ApplicationController

  def new
      @city = City.find(params[:shareplace_id]) #TODO
      @post = @city.posts.new
  end

  def create
     Post.create(post_params)
     redirect_to shareplace_path(City.find(params[:shareplace_id]))
  end

  def show
    @post =Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:name,:text,:tag,:address,:phonenumber,:URL,:image,:area_id).merge(city_id: City.find(params[:shareplace_id]).id)
  end
end
