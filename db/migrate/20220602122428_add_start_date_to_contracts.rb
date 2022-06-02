class AddStartDateToContracts < ActiveRecord::Migration[6.1]
  def change
    add_column :contracts, :start_date, :datetime
  end
end
