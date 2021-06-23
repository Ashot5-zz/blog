module Types
  class PostType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :post_body, String, null: true
    field :category, String, null: true
    field :author, String, null: false
    field :posted_by, UserType, null: true, method :user
  end
end

