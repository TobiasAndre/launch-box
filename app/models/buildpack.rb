# frozen_string_literal: true

class Buildpack < ApplicationRecord
  validates :name, presence: true
end
