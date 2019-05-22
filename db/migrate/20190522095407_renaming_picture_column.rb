class RenamingPictureColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :parts, :picture_url, :photo
  end
end
