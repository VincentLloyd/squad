class SquadGroupTypesController < ApplicationController
  before_action :set_squad_group_type, only: [:show, :edit, :update, :destroy]

  # GET /squad_group_types
  # GET /squad_group_types.json
  def index
    @squad_group_types = SquadGroupType.all
  end

  # GET /squad_group_types/1
  # GET /squad_group_types/1.json
  def show
  end

  # GET /squad_group_types/new
  def new
    @squad_group_type = SquadGroupType.new
  end

  # GET /squad_group_types/1/edit
  def edit
  end

  # POST /squad_group_types
  # POST /squad_group_types.json
  def create
    @squad_group_type = SquadGroupType.new(squad_group_type_params)

    respond_to do |format|
      if @squad_group_type.save
        format.html { redirect_to @squad_group_type, notice: 'Squad group type was successfully created.' }
        format.json { render :show, status: :created, location: @squad_group_type }
      else
        format.html { render :new }
        format.json { render json: @squad_group_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squad_group_types/1
  # PATCH/PUT /squad_group_types/1.json
  def update
    respond_to do |format|
      if @squad_group_type.update(squad_group_type_params)
        format.html { redirect_to @squad_group_type, notice: 'Squad group type was successfully updated.' }
        format.json { render :show, status: :ok, location: @squad_group_type }
      else
        format.html { render :edit }
        format.json { render json: @squad_group_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squad_group_types/1
  # DELETE /squad_group_types/1.json
  def destroy
    @squad_group_type.destroy
    respond_to do |format|
      format.html { redirect_to squad_group_types_url, notice: 'Squad group type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squad_group_type
      @squad_group_type = SquadGroupType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squad_group_type_params
      params.require(:squad_group_type).permit(:squadgroup_id, :exercise_type_id)
    end
end
