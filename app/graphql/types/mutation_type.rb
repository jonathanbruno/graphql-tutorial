module Types
  class MutationType < Types::BaseObject
    field :company_create, mutation: ::Mutations::CompanyCreate
    field :company_update, mutation: ::Mutations::CompanyUpdate
    field :company_delete, mutation: ::Mutations::CompanyDelete
    field :company_bulk_delete, mutation: ::Mutations::CompanyBulkDelete

    field :user_create, mutation: ::Mutations::UserCreate
    field :user_update, mutation: ::Mutations::UserUpdate
    field :user_delete, mutation: ::Mutations::UserDelete
    field :user_bulk_delete, mutation: ::Mutations::UserBulkDelete
  end
end

