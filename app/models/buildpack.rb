# frozen_string_literal: true

class Buildpack < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
end
