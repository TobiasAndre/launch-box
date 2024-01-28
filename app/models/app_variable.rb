# frozen_string_literal: true
class AppVariable < ApplicationRecord
  belongs_to :app

  validates :name, presence: true
  validates :value, presence: true
end
