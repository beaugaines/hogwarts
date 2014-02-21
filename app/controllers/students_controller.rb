class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to root_path, notice: 'Student saved'
    else
      render :new, alert: 'Record could not be saved; try again'
    end
  end

end