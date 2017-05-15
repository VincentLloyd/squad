class HomeController < ApplicationController
  def index
    @captain_profile = current_user.captain_profile
    if @captain_profile.present?
      @captain_results = SquadGroup.where(captain_id: current_user.id)
    end

    @member_profile = SquadMember.where(user_id: current_user.id)
    @squad_groups = []
    if @member_profile.present?
      @member_profile.each do |member|
        @squad_groups.push(SquadGroup.find(member.squadgroup_id))
      end
      # @member_results = SquadGroup.where(captain_id: current_user.id)
    end
    puts '=' *50
    pp @squad_groups
    puts '=' *50
  end
end
