class CreateExpressions < ActiveRecord::Migration[7.0]
  def change
    create_table :expressions do |t|
      t.integer :user_id
      t.integer :article_id
      t.integer :likes, default: 0
      t.text :comments
      t.timestamps
    end
  end
end
