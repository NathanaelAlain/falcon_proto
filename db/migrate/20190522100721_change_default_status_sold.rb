class ChangeDefaultStatusSold < ActiveRecord::Migration[5.2]
  def change
    change_column_default :parts, :sold, false
  end
end
