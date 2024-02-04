# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :list_projects, only: %i[index new edit]

  def index; end

  def new; end

  def edit; end

  private

  def list_projects
    @projects = Project.all
  end
end
