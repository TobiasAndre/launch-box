# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :list_teams, only: %i[index new edit]

  def index; end

  def new; end

  def edit; end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path, notice: t('teams.created')
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end

  def list_teams
    @teams = Team.all
  end
end
