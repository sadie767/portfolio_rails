class SchoolsController < ApplicationController
    before_action :authorize_admin, only: [:edit]
  def index
    @cv = cv.find(params[:cv_id])
    @schools = School.all
    @jobs = Job.all
    @projects = Project.all
  end

  def new
    @cv = Cv.find(params[:cv_id])
    @school = @cv.schools.new
  end

  def create
    @cv = Cv.find(params[:cv_id])
    @school = @cv.schools.new(school_params)
    if @school.save
      flash[:alert] = "School Successfully Added"
      redirect_to cv_path(@school.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :new
    end
  end

  def edit
    @cv = Cv.find(params[:cv_id])
    @school = School.find(params[:id])
  end

  def update
    @cv = Cv.find(params[:cv_id])
    @school = School.find(params[:id])
    if @school.update(school_params)
      flash[:alert] = "School Successfully Updated"
      redirect_to cv_path(@school.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :edit
    end
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @school = School.find(params[:id])
    @school.destroy
    redirect_to cv_path(@school.cv)
  end

private
  def school_params
    params.require(:school).permit(:name, :date_start, :date_end, :description)
  end
end
