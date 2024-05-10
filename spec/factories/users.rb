# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n}@outlier.com" }
    first_name { 'Out' }
    last_name { 'Lier' }
    username { 'outlier' }
    active { true }
    password { 'outlier@101' }
  end
end
