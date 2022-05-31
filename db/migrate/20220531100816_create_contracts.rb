class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.datetime :date
      t.integer :user_id
      t.integer :id_pet_sitter
      t.boolean :status
      t.text :description

      t.timestamps
    end
  end
end
