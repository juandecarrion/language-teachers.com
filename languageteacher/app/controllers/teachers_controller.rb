class TeachersController < ApplicationController

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher
    else
      render 'new'
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private
    def teacher_params
      params.require(:teacher).permit(:title, :text)
    end

end
