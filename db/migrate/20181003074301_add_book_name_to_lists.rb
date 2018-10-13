class AddBookNameToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :book1, :string
    add_column :lists, :book2, :string
    add_column :lists, :book3, :string
    add_column :lists, :book4, :string
    add_column :lists, :book5, :string
  end
end