class AddColumnsDescToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :description, :text
    add_column :users, :short_desc, :string
  end
end
