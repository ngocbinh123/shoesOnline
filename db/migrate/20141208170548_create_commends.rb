class CreateCommends < ActiveRecord::Migration
  def change
    create_table :commends do |t|
      t.text :content
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
