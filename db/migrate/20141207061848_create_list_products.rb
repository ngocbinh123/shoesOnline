class CreateListProducts < ActiveRecord::Migration
  def change
    create_table :list_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
