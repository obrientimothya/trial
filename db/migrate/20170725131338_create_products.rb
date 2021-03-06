class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.decimal :price, null: false, default: 0.0

      t.timestamps
    end
  end
end
