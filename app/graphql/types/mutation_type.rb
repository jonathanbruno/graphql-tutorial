module Types
  class MutationType < Types::BaseObject
    field :company_create, mutation: ::Mutations::Company::Create
    field :company_update, mutation: ::Mutations::Company::Update
    field :company_delete, mutation: ::Mutations::Company::Delete
    field :company_bulk_delete, mutation: ::Mutations::Company::BulkDelete
  end
end
