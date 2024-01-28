# frozen_string_literal: true

class AppDeploy < ApplicationRecord
  belongs_to :app
  belongs_to :deploy
end
