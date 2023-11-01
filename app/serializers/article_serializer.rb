class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :article_body, :category, :published, :photo

  belongs_to :physical_therapit
  has_many :expressions
end
