class AddClinicPhotoOneToPtInfos < ActiveRecord::Migration[7.0]
  def change
    add_column :pt_infos, :clinic_photo_one, :string
  end
end
