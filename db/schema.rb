# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121031155038) do

  create_table "orders", :force => true do |t|
    t.string   "employee"
    t.string   "business"
    t.string   "contact"
    t.string   "phone"
    t.string   "date"
    t.string   "date_promised"
    t.string   "quantity"
    t.string   "item"
    t.string   "paper_weight"
    t.string   "paper_color"
    t.string   "flat_size"
    t.string   "inkspec"
    t.string   "stapling"
    t.string   "binding"
    t.string   "folding"
    t.string   "drilling"
    t.string   "cutting"
    t.string   "padding"
    t.string   "numbering"
    t.string   "laminating"
    t.string   "miscellaneous"
    t.string   "base_design"
    t.string   "additional_design"
    t.string   "coating"
    t.string   "price"
    t.string   "location"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "print_cost"
  end

  create_table "paper_orders", :force => true do |t|
    t.string   "order"
    t.boolean  "for_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
