class AddFalsePetSittersStatusByDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :pet_sitters_status, :boolean, :default => false
  end
end
