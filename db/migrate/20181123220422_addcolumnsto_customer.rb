class AddcolumnstoCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :company, :string
    add_column :customers, :phone_number, :string
  end
end
