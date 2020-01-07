class Deletemodel < ActiveRecord::Migration[5.1]
  def change
      drop_table :micro_lposts
      drop_table :products
      drop_table :orders
      drop_table :payments
  end
end
