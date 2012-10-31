class AddPrintCostToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :print_cost, :string
  end
end
