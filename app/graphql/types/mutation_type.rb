module Types
  class MutationType < Types::BaseObject
    field :company_create, mutation: ::Mutations::Company::Create
    field :company_update, mutation: ::Mutations::Company::Update
    field :company_delete, mutation: ::Mutations::Company::Delete
    field :company_bulk_delete, mutation: ::Mutations::Company::BulkDelete


    field :user_create, mutation: ::Mutations::User::Create
    field :user_update, mutation: ::Mutations::User::Update
    field :user_delete, mutation: ::Mutations::User::Delete
    field :user_bulk_delete, mutation: ::Mutations::User::BulkDelete
  end
end
