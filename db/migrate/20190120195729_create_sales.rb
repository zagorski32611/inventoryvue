class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :price
      t.references :customers, foreign_key: true
      t.references :products,  foreign_key: true
      t.timestamps
    end
    add_index :sale, [:customers_id, :created_at]
  end
end
