class CreateTypeProducts < ActiveRecord::Migration
  def change
    create_table :type_products do |t|
      t.string :name
      t.integer :list_Product_id

      t.timestamps
    end
  end
end
