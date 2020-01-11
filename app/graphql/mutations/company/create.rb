# frozen_string_literal: true

# Mutations module
module Mutations
  # Company module
  module Company
    # Create class
    class Create < BaseMutation
      argument :attributes, Types::CompanyAttributes, required: true

      type Types::CompanyType

      def resolve(attributes:)
        company = ::Company.create!(attributes.to_h)
        company.as_json
      end
    end
  end
end
