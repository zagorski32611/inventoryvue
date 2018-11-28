class Addsales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :price, :integer
    add_column :sales, :sales_tax, :integer
    add_column :sales, :product_id
    add_column :sales, :
    add_foreign_key :sales, :products
    add_foreign_key :sales, :customers
  end
end
