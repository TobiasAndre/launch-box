# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_app_activities, dependent: :nullify
  has_many :team_users, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{name} #{surname}"
  end

  def name_initials
    "#{name[0]}#{surname[0]}"
  end
end
