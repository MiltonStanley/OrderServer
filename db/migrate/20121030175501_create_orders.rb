class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :employee
      t.string :business
      t.string :contact
      t.string :phone
      t.string :date
      t.string :date_promised
      t.string :quantity
      t.string :item
      t.string :paper_weight
      t.string :paper_color
      t.string :flat_size
      t.string :inkspec
      t.string :stapling
      t.string :binding
      t.string :folding
      t.string :drilling
      t.string :cutting
      t.string :padding
      t.string :numbering
      t.string :laminating
      t.string :miscellaneous
      t.string :base_design
      t.string :additional_design
      t.string :coating
      t.string :price
      t.string :location

      t.timestamps
    end
  end
end
