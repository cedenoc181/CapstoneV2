class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :physical_therapist_id
      t.string :title
      t.string :author
      t.text :article_body
      t.string :category
      t.boolean :published
      t.string :date_published
      t.string :photo

      t.timestamps
    end
  end
end
