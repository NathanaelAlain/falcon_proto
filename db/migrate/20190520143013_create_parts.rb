class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.text :description
      t.string :part_type_id
      t.text :picture_url
      t.boolean :sold
      t.references :user, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
