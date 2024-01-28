# frozen_string_literal: true

class UserAppActivity < ApplicationRecord
  belongs_to :user
  belongs_to :app

  validates :action, presence: true

  enum action: { add: 'add', change: 'change', exclude: 'exclude' }
end
