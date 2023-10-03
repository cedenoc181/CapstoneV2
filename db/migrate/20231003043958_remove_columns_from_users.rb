class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :state, :string
    remove_column :users, :city, :string
    remove_column :users, :address, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :DOB, :string
    remove_column :users, :insrance, :string
  end
end
