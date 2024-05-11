# frozen_string_literal: true

Rails.application.config.generators do |generate|
  generate.orm :active_record, primary_key_type: :uuid
  generate.test_framework :rspec
  generate.factory_bot dir: 'spec/factories'
end
