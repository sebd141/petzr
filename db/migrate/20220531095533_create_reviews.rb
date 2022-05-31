class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :comment
      t.integer :writer_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
