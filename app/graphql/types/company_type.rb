module Types
  class CompanyType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :users, [UserType],
          null: true,
          resolve: lambda { |company, _args, _ctx|
            BatchLoader::GraphQL.for(company.id).batch(default_value: [], cache: false) do |company_ids, loader|
              User.where(company_id: company_ids).each do |user|
                loader.call(user.company_id) { |memo| memo << user }
              end
            end
          }
  end
end
