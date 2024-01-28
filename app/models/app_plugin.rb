# frozen_string_literal: true

class AppPlugin < ApplicationRecord
  belongs_to :app
  belongs_to :plugin
end
