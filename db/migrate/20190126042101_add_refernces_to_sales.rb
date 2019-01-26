class AddReferncesToSales < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales, :customers, foreign_key: true
    add_reference :sales, :products, foreign_key: true
  end
end
