module Mutations
  class CompanyDelete < BaseMutation
    argument :company_id, ID, required: true

    type Types::CompanyType

    def resolve(company_id:)
      company = ::Company.find_by(id: company_id)
      result = company.as_json
      company.destroy
      result
    end
  end
end

