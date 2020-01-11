module Mutations
  module Company
    class Update < BaseMutation
      argument :company_id, ID, required: true
      argument :name, String, required: false

      type Types::CompanyType

      def resolve(company_id:, **attributes)
        company = ::Company.find_by(id: company_id)
        company.update_attributes(attributes)
        company.as_json
      end
    end
  end
end
