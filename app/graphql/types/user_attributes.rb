# frozen_string_literal: true

# InputObjects module
module Types
  # UserAttributes class
  class UserAttributes < BaseInputObject
    description 'Attributes for creating or updating a User'
    argument :name, String, "User's name", required: true
    argument :email, String, "User's email", required: true
  end
end
