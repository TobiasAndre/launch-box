# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :list_teams, only: %i[index new edit]

  def index; end

  def new; end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path, notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  private

  def team_params
    params.require(:team).permit(:name)
  end

  def list_teams
    @teams = Team.all
  end
end
