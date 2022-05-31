class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pet_sitters_status, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :type_of_pet, :string
    add_column :users, :type_of_service, :string
    add_column :users, :price, :float
  end
end
