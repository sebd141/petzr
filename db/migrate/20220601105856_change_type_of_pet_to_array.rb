class ChangeTypeOfPetToArray < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :type_of_pet
    add_column :users, :type_of_pet, :string, array: true, default: []
  end
end
