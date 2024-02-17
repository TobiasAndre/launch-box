# frozen_string_literal: true

class AppsController < ApplicationController
  before_action :list_apps, only: %i[index]
  before_action :set_app, only: %i[show edit update destroy]

  def index; end

  def show; end

  def new; end

  def edit; end

  def update
    if @app.update(app_params)
      redirect_to apps_path, notice: t('apps.updated')
    else
      render :edit
    end
  end

  def destroy; end

  private

  def set_app
    @app = App.find(params[:id])
  end

  def app_params
    params.require(:app).permit(:name, :description, :deploy_type)
  end

  def list_apps
    @apps = App.all
  end
end
