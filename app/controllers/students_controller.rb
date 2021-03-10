require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    student = Student.find(params[:id])
    # if student.active
    #   student.active = false
    # else
    #   student.active = true
    # end

    # student.active = !student.active 
    
    student.toggle(:active)
    student.save
    redirect_to student_path(student)
    # redirect_to "/students/#{student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end