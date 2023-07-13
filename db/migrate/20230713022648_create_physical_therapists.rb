class CreatePhysicalTherapists < ActiveRecord::Migration[7.0]
  def change
    create_table :physical_therapists do |t|
      t.string :email 
      t.string :first_name 
      t.string :last_name 
      t.string :profile_picture
      t.string :title
      t.string :specialization
      t.string :npi_number 
      t.string :state 
      t.string :city
      t.string :clinic_address
      t.string :phone_number 
      t.string :under_grad_education
      t.string :post_grad__education
      t.string :insurance_network 
      t.string :languages_spoken
      t.boolean :home_visits 
      t.text :about_me
      t.float :rating
      t.timestamps
    end
  end
end
