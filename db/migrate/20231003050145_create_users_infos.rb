class CreateUsersInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :users_infos do |t|
      t.string :state
      t.string :city
      t.string :address
      t.string :DOB
      t.string :phone_number
      t.string :insurance
      t.string :insurance_id

      t.timestamps
    end
  end
end
