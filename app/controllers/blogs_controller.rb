class BlogsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
end
