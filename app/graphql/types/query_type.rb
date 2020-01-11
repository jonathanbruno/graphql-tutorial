module Types
  class QueryType < Types::BaseObject
    field :users, [UserType], null: false
    field :comments, [CommentType], null: false
    field :companies, [CompanyType], null: false

    def users
      User.all
    end

    def comments
      Comment.all
    end

    def companies
      Company.all
    end
  end
end
