class CaptainProfilesController < ApplicationController
  before_action :set_captain_profile, only: [:show, :edit, :update, :destroy]

  # GET /captain_profiles
  # GET /captain_profiles.json
  def index
    @captain_profiles = CaptainProfile.all
  end

  # GET /captain_profiles/1
  # GET /captain_profiles/1.json
  def show
    @captain_profile = CaptainProfile.find_by(user_id: current_user.id)
  end

  # GET /captain_profiles/new
  def new
    if current_user.captain_profile.present?
      redirect_to captain_profile_path(current_user.id)
    end
    @captain_profile = CaptainProfile.new
  end

  # GET /captain_profiles/1/edit
  def edit
  end

  # POST /captain_profiles
  # POST /captain_profiles.json
  def create
    @captain_profile = CaptainProfile.new(captain_profile_params)
    @captain_profile.user_id = current_user.id

    respond_to do |format|
      if @captain_profile.save
        format.html { redirect_to profile_path(@captain_profile.user.profile.id), notice: 'Captain profile was successfully created.' }
        format.json { render :show, status: :created, location: @captain_profile }
      else
        format.html { render :new }
        format.json { render json: @captain_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /captain_profiles/1
  # PATCH/PUT /captain_profiles/1.json
  def update
    respond_to do |format|
      if @captain_profile.update(captain_profile_params)
        format.html { redirect_to profile_path(@captain_profile.user.profile.id), notice: 'Captain profile was successfully updated.' }
        # format.html { redirect_to profile_path(current_user.profile.id), notice: 'Captain profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @captain_profile }
      else
        format.html { render :edit }
        format.json { render json: @captain_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captain_profiles/1
  # DELETE /captain_profiles/1.json
  def destroy
    @captain_profile.destroy
    respond_to do |format|
      format.html { redirect_to profile_path(@captain_profile.user.profile.id), notice: 'Captain profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_captain_profile
      @captain_profile = CaptainProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def captain_profile_params
      params.require(:captain_profile).permit(:user_id, :bio, :contact_phone, :contact_email)
    end
end
