module Types
  class CommentType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :user, UserType,
          null: false,
          resolve: lambda { |comment, _args, _ctx|
            BatchLoader::GraphQL.for(comment).batch(default_value: [], cache: false) do |comments, loader|
              users_ids = comments.pluck(:user_id).uniq
              User.where(id: users_ids).each do |user|
                comments.select { |c| c.user_id == user.id }.each do |c|
                  loader.call(c, user)
                end
              end
            end
          }
  end
end
