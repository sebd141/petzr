class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :contracts, :date, :end_date
  end
end
