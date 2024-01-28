# frozen_string_literal: true

class AppBuildpack < ApplicationRecord
  belongs_to :app
  belongs_to :buildpack
end
