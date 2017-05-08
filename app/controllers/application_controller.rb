class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :profile_incomplete?

  private
  def after_sign_in_path_for(resource_or_scope)
    if Profile.exists?(:user_id => current_user.id)
      root_path
    else
      new_profile_path
    end
  end

  def profile_incomplete?
    if current_user.profile.nil?
      redirect_to new_profile_path
    end
  end

end
