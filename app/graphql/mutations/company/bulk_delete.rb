module Mutations
  module Company
    class BulkDelete < BaseMutation
      argument :company_ids, [ID], required: true

      field :companies, [Types::CompanyType], null: false

      def resolve(company_ids:)
        companies = ::Company.where(id: company_ids)
        result = companies.as_json
        companies.destroy_all
        { companies: result }
      end
    end
  end
end
