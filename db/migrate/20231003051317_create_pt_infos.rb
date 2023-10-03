class CreatePtInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :pt_infos do |t|
      t.integer :physical_therapist_id
      t.string :email
      t.string :fax
      t.string :phone_number
      t.string :npi_number
      t.string :clinic_address
      t.string :post_grad_edu
      t.boolean :home_visit
      t.boolean :tele_medicine
      t.string :insurance_network 
      t.string :languages
      t.text :about_me
      t.timestamps
    end
  end
end
