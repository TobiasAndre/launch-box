# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :list_teams, only: %i[index new edit]

  def index; end

  def new; end

  def edit; end

  private

  def list_teams
    @teams = Team.all
  end
end
