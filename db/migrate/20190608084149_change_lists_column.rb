class ChangeListsColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :book1, :string
    remove_column :lists, :book2, :string
    remove_column :lists, :book3, :string
    remove_column :lists, :book4, :string
    remove_column :lists, :book5, :string
    remove_column :lists, :book1_url, :text
    remove_column :lists, :book2_url, :text
    remove_column :lists, :book3_url, :text
    remove_column :lists, :book4_url, :text
    remove_column :lists, :book5_url, :text
    add_column :lists, :comment, :string
  end
end
