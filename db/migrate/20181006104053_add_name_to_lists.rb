class AddNameToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :name, :string
    remove_column :lists, :list_name, :string
  end
end
