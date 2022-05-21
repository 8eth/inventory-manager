class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
