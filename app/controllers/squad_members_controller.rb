class SquadMembersController < ApplicationController
  before_action :set_squad_member, only: [:destroy]

  # POST /squad_members
  # POST /squad_members.json
  def create
    squadgroup = SquadGroup.find(params[:squad_group_id])

      customer = Stripe::Customer.create(
       :email => params[:stripeEmail],
       :source  => params[:stripeToken]
     )

     charge = Stripe::Charge.create(
       :customer    => customer.id,
       :amount      => squadgroup.price,
       :description => 'Rails Stripe customer',
       :currency    => 'aud'
     )

    @squad_member = SquadMember.new
    @squad_member.squadgroup_id = params[:squad_group_id]
    @squad_member.user_id = current_user.id
    search_string = params[:search]

    respond_to do |format|
      if @squad_member.save
        format.html { redirect_to search_squad_groups_path(search: params[:search]),method: :get, notice: 'Squad member was successfully created.' }
        format.json { render :show, status: :created, location: @squad_member }
      else
        format.html { render :new }
        format.json { render json: @squad_member.errors, status: :unprocessable_entity }
      end
    end
  rescue Stripe::CardError => e
   flash[:notice] = e.message
   redirect_to search_squad_groups_path(search: params[:search])
  end
  end

  # DELETE /squad_members/1
  # DELETE /squad_members/1.json
  def destroy
    @squad_member.destroy
    respond_to do |format|
      format.html { redirect_to search_squad_groups_path(search: params[:search]) , notice: 'Squad member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_squad_member
    @squad_member = SquadMember.find(params[:id])
  end
