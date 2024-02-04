# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :list_projects, only: %i[index new edit]

  def index; end

  def new; end

  def edit; end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: t('projects.created')
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def list_projects
    @projects = Project.all
  end
end
