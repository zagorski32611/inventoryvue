class Sales < ActiveRecord::Migration[5.2]
  def change
    rename_column :sales, :products_id, :product_id 
    rename_column :sales, :customers_id, :customer_id
  end
end
