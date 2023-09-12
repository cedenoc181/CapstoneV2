class AddClinicToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :clinic, :boolean
  end
end
