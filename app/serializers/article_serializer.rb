class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :article_body, :category, :published, :photo
end
