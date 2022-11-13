class StudentsController < ApplicationController
  def new
    @student = Student.new # create
    @students = Student.all # get all students
  end

  def create
    @student = Student.new(student_params)
    if @student.save # save into sql
      redirect_to new_student_path + "12?"
    end
  end

  private
  def student_params
    params.require(:student).permit(:firstname, :lastname)
  end
end
