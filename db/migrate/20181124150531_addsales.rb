class Addsales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :price, :integer
    add_column :sales, :sales_tax, :integer
    add_foreign_key :sales, :customers
    add_foreign_key :sales, :products
  end
end
