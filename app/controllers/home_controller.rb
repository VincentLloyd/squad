class HomeController < ApplicationController
  def index
    @captain_profile = current_user.captain_profile
    if @captain_profile.present?
      @results = SquadGroup.where(captain_id: current_user.id)
    end
  end
end
