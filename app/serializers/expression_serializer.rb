class ExpressionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article_id, :likes, :comments
end
