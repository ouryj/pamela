class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
    @teachers = Instructor.all 

    @students = Student.all 
    
  end

  def new
    @cohort = Cohort.new
    @teachers = Instructor.all 
    @students = Student.all 
    @courses = Course.all 
  end
  def create
    Cohort.create(cohort_params)
    redirect_to cohorts_path
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit

    @cohort = Cohort.find(params[:id])
    @teachers = Instructor.all
    @students = Student.all
    @courses = Course.all
  end
  def update 
     cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    redirect_to cohorts_path
  end
  private
  def cohort_params
    params.require(:cohort).permit(:name, :startDate, :endDate, :instructor, :students, :course_id)
  end
end
