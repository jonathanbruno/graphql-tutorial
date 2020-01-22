# frozen_string_literal: true

# Mutations module
module Mutations
  # UserUpdate Class
  class UserUpdate < BaseMutation
    argument :user_id, ID, required: true
    argument :attributes, Types::UserAttributes, required: true

    type Types::UserType

    def resolve(user_id:, attributes:)
      user = ::User.find_by(id: user_id)
      user.update_attributes(attributes)
      user.as_json
    end
  end
end

