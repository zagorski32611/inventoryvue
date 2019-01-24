class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :price
      t.references :customer, foreign_key: true
      t.references :product,  foreign_key: true
      t.timestamps
    end
    add_index :sale, [:customer_id, :created_at]
  end
end
