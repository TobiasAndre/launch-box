# frozen_string_literal: true

class Plugin < ApplicationRecord
  enum service_type: { postgres: 'postgres', redis: 'redis', elasticsearch: 'elasticsearch',
                       letsencrypt: 'letsencrypt', rabbitmq: 'rabbitmq' }

  validates :name, presence: true
end
