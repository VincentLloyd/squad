module ApplicationHelper

  def user_profile_id
    Profile.where(:user_id => current_user.id).pluck(:id)
  end

  def capt_profile_id
    CaptainProfile.where(:user_id => current_user.id).pluck(:id)
  end
end
