# frozen_string_literal: true

# Mutations module
module Mutations
  # User module
  module User
    # Delete class
    class Delete < BaseMutation
      argument :user_id, ID, required: true

      type Types::UserType

      def resolve(user_id:)
        user = ::User.find_by(id: user_id)
        result = user.as_json
        user.destroy
        result
      end
    end
  end
end
