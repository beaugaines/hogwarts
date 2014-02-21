class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    new_student = Student.new(params[:id])
    
    house << student
    redirect_to students_path
  end
end