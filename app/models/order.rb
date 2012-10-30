class Order < ActiveRecord::Base
  attr_accessible :additional_design, :base_design, :binding, :business, :coating, :contact, :cutting, :date, :date_promised, :drilling, :employee, :flat_size, :folding, :inkspec, :item, :laminating, :location, :miscellaneous, :numbering, :padding, :paper_color, :paper_weight, :phone, :price, :quantity, :stapling
end
