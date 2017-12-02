class JobsController < ApplicationController
  def index
    @cv = cv.find(params[:cv_id])
    @jobs = Job.all
    @schools = School.all
    @projects = Project.all
  end

  def new
    @cv = Cv.find(params[:cv_id])
    @job = @cv.jobs.new
  end

  def create
    @cv = Cv.find(params[:cv_id])
    @job = @cv.jobs.new(job_params)
    if @job.save
      flash[:alert] = "Job Successfully Added"
      redirect_to cv_path(@job.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :new
    end
  end

  def edit
    @cv = Cv.find(params[:cv_id])
    @job = Job.find(params[:id])
  end

  def update
    @cv = Cv.find(params[:cv_id])
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:alert] = "Job Successfully Updated"
      redirect_to cv_path(@job.cv)
    else
      flash[:alert] = "Rating should be between 1 and 5"
      render :edit
    end
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to cv_path(@job.cv)
  end

private
  def job_params
    params.require(:job).permit(:name, :date_start, :date_end, :description)
  end
end
