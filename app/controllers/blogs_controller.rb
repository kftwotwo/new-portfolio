class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:search]
      @blogs = Blog.search(params[:search]).paginate(page: params[:page], per_page: 2).order("created_at DESC")
    else
      @blogs = Blog.all.paginate(page: params[:page], per_page: 2).order('created_at DESC')
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Successfully Created!"
      redirect_to blog_path(@blog.id)
    else
      render :new
      flash[:error] = "Hmmm... Somthing went wrong."
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
