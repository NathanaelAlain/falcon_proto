class RemovePhotoOnParts < ActiveRecord::Migration[5.2]
  def change
    remove_column :parts, :picture_url
  end
end
