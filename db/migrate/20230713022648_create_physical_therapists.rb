class CreatePhysicalTherapists < ActiveRecord::Migration[7.0]
  def change
    create_table :physical_therapists do |t|
      t.string :first_name 
      t.string :last_name 
      t.string :profile_picture
      t.string :title
      t.string :specialization
      t.float :rating, default: 0.0
      t.timestamps
    end
  end
end
