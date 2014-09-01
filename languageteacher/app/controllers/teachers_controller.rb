class TeachersController < ApplicationController

  def new
    @teacher = Teacher.new
  end

  def create
    render plain: params[:teacher].inspect
  end

  #private
  #
  #def article_params
  #  params.require(:teacher).permit(:your, :attributes)
  #end
end
