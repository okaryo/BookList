class AddUrlToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :book1_url, :text
    add_column :lists, :book2_url, :text
    add_column :lists, :book3_url, :text
    add_column :lists, :book4_url, :text
    add_column :lists, :book5_url, :text
  end
end
