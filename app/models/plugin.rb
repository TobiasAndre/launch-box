# frozen_string_literal: true

class Plugin < ApplicationRecord
  enum service_type: { postgres: 0, redis: 1, elasticsearch: 2, letsencrypt: 3, rabbitmq: 4 }

  validates :name, presence: true
end
