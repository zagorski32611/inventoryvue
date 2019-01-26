class AddSalesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string  :price
      t.string  :sales_tax
    end
  end
end
