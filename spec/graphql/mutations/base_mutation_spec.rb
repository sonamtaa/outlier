# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::BaseMutation do
  describe '#authorize_user' do
    it 'returns true if user is signed in' do
      mutation = described_class.new(
        object: nil, context: { current_user: double }, field: nil
      )
      expect(mutation.send(:authorize_user)).to be(true)
    end

    it 'raise an error if not signed in' do
      mutation = described_class.new(
        object: nil, context: { current_user: nil }, field: nil
      )

      expect { mutation.send(:authorize_user) }
        .to raise_error(GraphQL::ExecutionError, 'User not signed in')
    end
  end
end
