# frozen_string_literal: true

class User < ApplicationRecord
  include GraphQL::Interface

  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable,
         :token_authenticatable

  validates :first_name, :last_name, presence: true
end
