class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :part, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
