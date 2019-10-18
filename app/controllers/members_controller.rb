# frozen_string_literal: true

class MembersController < ApplicationController
  before_action :set_member, only: %i[show update destroy]

  # GET /members
  def index
    @members = Member.all
    # @members = current_user.members

    render json: @members
  end

  # GET /members/1
  def show
    render json: @member
    # render json: current_user.members.find(params[:id])
  end

  # POST /members
  def create
    @member = Member.new(member_params)

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  def update
    if @member.update(member_params)
      render json: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  def destroy
    # @team = current_user.teams.find(params[:id])
    @member.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def member_params
    params.require(:member).permit(:team_id, :hero_id)
  end
end
