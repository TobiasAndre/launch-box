# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :set_team, only: %i[edit update]
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

  def update
    if @team.update(team_params)
      redirect_to teams_path, notice: t('teams.updated')
    else
      render :edit
    end
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end

  def list_teams
    @teams = Team.all
  end
end
