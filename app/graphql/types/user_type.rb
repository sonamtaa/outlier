# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    graphql_name 'User'

    implements GraphQL::Types::Relay::Node
    global_id_field :id

    field :last_name, String, null: false
    field :first_name, String, null: false
    field :email, String, null: false
    field :username, String, null: false
    field :authentication_token, String, null: false

    delegate :last_name, to: :object
    delegate :first_name, to: :object

    def authentication_token
      if object.gql_id != context[:current_user]&.gql_id
        raise GraphQL::UnauthorizedFieldError, 'Unable to access authentication_token'
      end

      object.authentication_token
    end
  end
end
