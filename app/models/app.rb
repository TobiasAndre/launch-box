# frozen_string_literal: true

class App < ApplicationRecord
  enum deploy_type: { buildpack: 0, docker: 1 }
  before_create :generate_uuid

  validates :name, presence: true

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
