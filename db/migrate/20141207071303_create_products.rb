class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :type_product_id
      t.float :price, default: 100000
      t.integer :number, default: 100
      t.integer :view, default: 0
      t.text :description

      t.timestamps
    end
  end
end
