class CreateListbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :listbooks do |t|
      t.integer :list_id
      t.integer :book_id

      t.timestamps
    end
  end
end
