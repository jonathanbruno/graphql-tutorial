# frozen_string_literal: true

# Mutations module
module Mutations
  # BulkDelete class
  class UserBulkDelete < BaseMutation
    argument :user_ids, [ID], required: true

    field :users, [Types::UserType], null: false

    def resolve(user_ids:)
      users = ::User.where(id: user_ids)
      result = users.as_json
      users.destroy_all
      { users: result }
    end
  end
end

