# frozen_string_literal: true

# Mutations module
module Mutations
  # CompanyCreate class
  class CompanyCreate < BaseMutation
    argument :attributes, Types::CompanyAttributes, required: true

    type Types::CompanyType

    def resolve(attributes:)
      company = ::Company.create!(attributes.to_h)
      company.as_json
    end
  end
end

