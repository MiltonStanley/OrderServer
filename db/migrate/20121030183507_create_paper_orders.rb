class CreatePaperOrders < ActiveRecord::Migration
  def change
    create_table :paper_orders do |t|
      t.string :order
      t.boolean :for_order

      t.timestamps
    end
  end
end
