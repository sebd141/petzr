class ChangeTypeOfServiceToArray < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :type_of_service
    add_column :users, :type_of_service, :string, array: true, default: []
  end
end
