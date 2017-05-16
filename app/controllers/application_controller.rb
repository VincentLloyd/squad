class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  helper_method :user_profile_incomplete?
  helper_method :is_user_captain?

  private
  def after_sign_in_path_for(resource_or_scope)
    if Profile.exists?(:user_id => current_user.id)
      root_path
    else
      new_profile_path
    end
  end

  def user_profile_incomplete?
    if current_user.profile.nil?
      redirect_to new_profile_path
    end
  end

  def is_user_captain?
    current_user.captain_profile.present?
  end

end
