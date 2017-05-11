class ExerciseTypesInUsersController < ApplicationController
  before_action :set_exercise_types_in_user, only: [:show, :edit, :update, :destroy]

  # GET /exercise_types_in_users
  # GET /exercise_types_in_users.json
  def index
    @exercise_types_in_users = ExerciseTypesInUser.all
  end

  # GET /exercise_types_in_users/1
  # GET /exercise_types_in_users/1.json
  def show
  end

  # GET /exercise_types_in_users/new
  def new
    @exercise_types_in_user = ExerciseTypesInUser.new
  end

  # GET /exercise_types_in_users/1/edit
  def edit
  end

  # POST /exercise_types_in_users
  # POST /exercise_types_in_users.json
  def create
    @exercise_types_in_user = ExerciseTypesInUser.new(exercise_types_in_user_params)
    @exercise_types_in_user.user_id = current_user.id

    respond_to do |format|
      if @exercise_types_in_user.save
        format.html { redirect_to @exercise_types_in_user, notice: 'Exercise types in user was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_types_in_user }
      else
        format.html { render :new }
        format.json { render json: @exercise_types_in_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_types_in_users/1
  # PATCH/PUT /exercise_types_in_users/1.json
  def update
    respond_to do |format|
      if @exercise_types_in_user.update(exercise_types_in_user_params)
        format.html { redirect_to @exercise_types_in_user, notice: 'Exercise types in user was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_types_in_user }
      else
        format.html { render :edit }
        format.json { render json: @exercise_types_in_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_types_in_users/1
  # DELETE /exercise_types_in_users/1.json
  def destroy
    @exercise_types_in_user.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_in_users_url, notice: 'Exercise types in user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_types_in_user
      @exercise_types_in_user = ExerciseTypesInUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_types_in_user_params
      params.require(:exercise_types_in_user).permit(:user_id, :exercise_type_id, :offered)
    end
end
