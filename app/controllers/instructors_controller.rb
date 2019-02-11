class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
     @instructor = Instructor.create(instructor_params)
    redirect_to instructors_path
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(instructor_params)
    redirect_to instructors_path
  end

  def destroy
    instructor = Instructor.find(params[:id])
    instructor.destroy
    redirect_to instructors_path
  end

  private 
  
  def instructor_params
    params.require(:instructor).permit(:firstname, :lastname, :age, :salary, :educationPeak)
  end
end
