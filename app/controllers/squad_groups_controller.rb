class SquadGroupsController < ApplicationController
  before_action :set_squad_group, only: [:show, :edit, :update, :destroy,:delete_all_members]

  # GET /squad_groups
  # GET /squad_groups.json
  def index
    @squad_groups = SquadGroup.all
  end

  def search
    @search_param = params[:search]
    @results = SquadGroup.where(exercise_types_id: @search_param)
  end

  # GET /squad_groups/1
  # GET /squad_groups/1.json
  def show
   @captain_profile = User.find(@squad_group.captain_id).profile
   @members = SquadMember.where(squadgroup_id: @squad_group.id)
  end

  # GET /squad_groups/new
  def new
    @squad_group = SquadGroup.new
  end

  # GET /squad_groups/1/edit
  def edit
  end

  # POST /squad_groups
  # POST /squad_groups.json
  def create
    price = params[:squad_group][:price].to_i * 100
    @squad_group = SquadGroup.new(squad_group_params_create)
    @squad_group.price = price
    @squad_group.captain_id = current_user.id
    respond_to do |format|
      if @squad_group.save
        format.html { redirect_to @squad_group, notice: 'Squad group was successfully created.' }
        format.json { render :show, status: :created, location: @squad_group }
      else
        format.html { render :new }
        format.json { render json: @squad_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squad_groups/1
  # PATCH/PUT /squad_groups/1.json
  def update
    respond_to do |format|
      if @squad_group.update(squad_group_params)
        format.html { redirect_to @squad_group, notice: 'Squad group was successfully updated.' }
        format.json { render :show, status: :ok, location: @squad_group }
      else
        format.html { render :edit }
        format.json { render json: @squad_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squad_groups/1
  # DELETE /squad_groups/1.json
  def destroy
    @squad_group.destroy
    respond_to do |format|
      format.html { redirect_to squad_groups_url, notice: 'Squad group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_all_members
    members = SquadMember.where(squadgroup_id: @squad_group.id)

    respond_to do |format|
      if members.each {|member| member.destroy}
        format.html { redirect_to root_path, notice: 'Members resest.' }
        format.json { render :show, status: :ok}
      else
        format.html { redirect_to root_path, notice: 'Members not resest.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squad_group
      @squad_group = SquadGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squad_group_params
      params.require(:squad_group).permit(:user_id, :name, :location, :max_members,:exercise_types_id,:price)
    end
    def squad_group_params_create
      params.require(:squad_group).permit(:user_id, :name, :location, :max_members, :exercise_types_id)
    end
end
