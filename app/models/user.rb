# frozen_string_literal: true

class User < ApplicationRecord
  include GraphQl::Interface

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable,
         :token_authenticatable

  validates :first_name, :last_name, presence: true
end
