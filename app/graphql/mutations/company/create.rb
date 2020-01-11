module Mutations
  module Company
    class Create < BaseMutation
      argument :name, String, required: true

      type Types::CompanyType

      def resolve(name: nil)
        company = ::Company.create!(name: name)
        company.as_json
      end
    end
  end
end
