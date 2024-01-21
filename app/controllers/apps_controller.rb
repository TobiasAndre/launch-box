# frozen_string_literal: true

class AppsController < ApplicationController
  before_action :list_apps, only: %i[index]
  def index; end

  private

  def list_apps
    @apps = App.all
  end
end
