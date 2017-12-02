class BlogsController < ApplicationController
  def index
    @cv = cv.find(params[:cv_id])
    @blogs = Blog.all
    @schools = School.all
    @projects = Project.all
  end

  def new
    @cv = Cv.find(params[:cv_id])
    @blog = @cv.blogs.new
  end

  def create
    @cv = Cv.find(params[:cv_id])
    @blog = @cv.blogs.new(blog_params)
    if @blog.save
      flash[:alert] = "Blog Successfully Added"
      redirect_to cv_path(@blog.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :new
    end
  end

  def edit
    @cv = Cv.find(params[:cv_id])
    @blog = Blog.find(params[:id])
  end

  def update
    @cv = Cv.find(params[:cv_id])
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      flash[:alert] = "Blog Successfully Updated"
      redirect_to cv_path(@blog.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :edit
    end
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to cv_path(@blog.cv)
  end

private
  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
