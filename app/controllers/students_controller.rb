class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end
  
  def create
    @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect new_student_path
  end

end
