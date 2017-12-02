class CvsController < ApplicationController
  before_action :authorize, only: [:index, :new]
  before_action :authorize_admin, only: [:edit]
def index
    @cvs = Cv.all
  end

def show
  @cv = Cv.find(params[:id])
end

def new
  @cv = Cv.new
end

def create
  @cv = Cv.new(cv_params)
  if @cv.save
    # messing with alerts!
    flash[:notice] = "Wine Successfully added"
    redirect_to  cvs_path
  else
    render :new
  end
end

def edit
  @cv = Cv.find(params[:id])
end

def update
  @cv= Cv.find(params[:id])
  if @cv.update(cv_params)
    redirect_to cvs_path
  else
    render :edit
  end
end

def destroy
  @cv = Cv.find(params[:id])
  @cv.destroy
  redirect_to cvs_path
end

private
def cv_params
  params.require(:cv).permit(:name)
end
end
