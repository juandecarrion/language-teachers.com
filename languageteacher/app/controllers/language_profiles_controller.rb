class LanguageProfilesController < ApplicationController
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @language_profile = @teacher.language_profiles.create(language_profile_params)
    redirect_to teacher_path(@teacher)
  end

  private
  def language_profile_params
    params.require(:language_profile).permit(:language, :body)
  end
end
