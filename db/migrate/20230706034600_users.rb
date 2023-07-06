class Users < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name 
      t.string :last_name
      t.string :state 
      t.string :city
      t.string :address
      t.integer :zipcode
      t.string :phone_number
      t.string :DOB
      t.string :insurance
      t.timestamps
    end
  end
end
