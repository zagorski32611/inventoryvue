class RemoveColumnFromSales < ActiveRecord::Migration[5.2]
  def change
    drop_table :sales

  end
end
