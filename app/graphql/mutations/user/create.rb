# frozen_string_literal: true

# Mutations module
module Mutations
  # User module
  module User
    # Create class
    class Create < BaseMutation
      argument :attributes, Types::UserAttributes, required: true

      type Types::UserType

      def resolve(attributes:)
        user = ::User.create!(attributes.to_h)
        user.as_json
      end
    end
  end
end
