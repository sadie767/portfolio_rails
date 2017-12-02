class ProjectsController < ApplicationController
    before_action :authorize_admin, only: [:edit]
  def index
    @cv = cv.find(params[:cv_id])
    @jobs = Job.all
    @schools = School.all
    @projects = Project.all
  end

  def new
    @cv = Cv.find(params[:cv_id])
    @project = @cv.projects.new
  end

  def create
    @cv = Cv.find(params[:cv_id])
    @project = @cv.projects.new(project_params)
    if @project.save
      flash[:alert] = "Project Successfully Added"
      redirect_to cv_path(@project.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :new
    end
  end

  def edit
    @cv = Cv.find(params[:cv_id])
    @project = Project.find(params[:id])
  end

  def update
    @cv = Cv.find(params[:cv_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:alert] = "Project Successfully Updated"
      redirect_to cv_path(@project.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :edit
    end
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to cv_path(@project.cv)
  end

private
  def project_params
    params.require(:project).permit(:url)
  end
end
