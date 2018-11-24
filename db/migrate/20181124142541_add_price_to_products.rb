class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cost, :integer
    add_column :products, :retail_price, :integer
    add_column :products, :wholesale_price, :integer
    
  end
end
