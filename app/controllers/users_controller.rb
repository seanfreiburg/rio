class UsersController < ApplicationController

  def profile
    @user = User.find current_user
    @resumes = @user.resumes
  end
end