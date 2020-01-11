module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: false
    field :company, CompanyType,
          null: false,
          resolve: lambda { |user, _args, _ctx|
            BatchLoader::GraphQL.for(user).batch(default_value: [], cache: false) do |users, loader|
              company_ids = users.pluck(:company_id).uniq
              Company.where(id: company_ids).each do |company|
                users.select { |u| u.company_id == company.id }.each do |u|
                  loader.call(u, company)
                end
              end
            end
          }
    field :comments, [CommentType], null: true, resolve: lambda { |user, _args, ctx|
      BatchLoader::GraphQL.for(user.id).batch(default_value: [], cache: false) do |user_ids, loader|
        Comment.where(user_id: user_ids).each do |comment|
          loader.call(comment.user_id) { |memo| memo << comment }
        end
      end
    }
    field :comment_count, Int, null: false, resolve: lambda {|user, _args, _ctx|
      BatchLoader::GraphQL.for(user.id).batch(default_value: [], cache: false) do |user_ids, loader|
        grouped_comments = Comment.where(user_id: user_ids).group_by(&:user_id)
        grouped_comments.keys.each do |key|
          loader.call(key, grouped_comments[key].size)
        end
      end
    }
  end
end
