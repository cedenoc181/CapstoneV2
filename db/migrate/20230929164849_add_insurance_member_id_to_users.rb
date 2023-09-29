class AddInsuranceMemberIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :insurance_member_id, :string
  end
end
