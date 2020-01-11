# frozen_string_literal: true

# InputObjects module
module Types
  # CompanyAttributes class
  class CompanyAttributes < BaseInputObject
    description 'Attributes for creating or updating a company'
    argument :name, String, "Company's name", required: true
  end
end
