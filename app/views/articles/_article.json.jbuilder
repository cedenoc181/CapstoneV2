json.extract! article, :id, :title, :author, :article_body, :category, :published, :photo, :created_at, :updated_at
json.url article_url(article, format: :json)
