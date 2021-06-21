module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :post_body, String, required: false
    argument :category, String, required: false
    argument :author, String, required: true

    type Types::PostType

    def resolve(description: nil, url: nil)
      Post.create!(
        title: title,
        post_body: post_body,
        category: category,
        author: author
      )
    end
  end
end
