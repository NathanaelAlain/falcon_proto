class AddPhotoUrlOnParts < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :picture_url, :string
  end
end
