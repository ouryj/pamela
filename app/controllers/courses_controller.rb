class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end
  def create 
    Course.create(course_params)
    redirect_to courses_path
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end
  def update
    course = Course.find(params[:id])
    course.update(course_params)
    redirect_to courses_path
  end
  
  def destroy
    course = Course.find(params[:id])
    course.destroy
    redirect_to courses_path
  end
   
 private
 def course_params
  params.require(:course).permit(:name, :totalInClassHours)
 end
end
