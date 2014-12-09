class CreateDetailsProducts < ActiveRecord::Migration
  def change
    create_table :details_products do |t|
      t.integer :product_id
      t.integer :type_product_id

      t.timestamps
    end
  end
end
