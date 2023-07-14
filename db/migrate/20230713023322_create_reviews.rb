class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :physical_therapist_id
      t.string :review_header
      t.text :users_review
      t.string :photo
      t.string :star_rating_value
      t.string :stars
      t.timestamps
    end
  end
end
# 5 onclicks or one if can make dry code, that will determine selected star rating then follow by if else or can make if else on the onclick to combine into one 
# star image is gonna be generated with a if else statement on the front end, going to have 5 images of star ratings that will be selected by user 
# the selected rating image url or star emojis  will be posted via fetch to represent star rating (make sure image is transparent)