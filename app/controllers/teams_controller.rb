# frozen_string_literal: true

class TeamsController < ProtectedController
  before_action :set_team, only: %i[show update destroy]

  # GET /teams
  def index
    # @teams = Team.all
    @teams = current_user.teams

    render json: @teams
  end

  # GET /teams/1
  def show
    # render json: @team
    render json: current_user.teams.find(params[:id])
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    @team = current_user.teams.find(params[:id])

    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    params.require(:team).permit(:name, :create_date, :comment, :user_id)
  end
end
