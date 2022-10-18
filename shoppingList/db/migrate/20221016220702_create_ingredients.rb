class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.text :item
      t.text :amount
      t.text :unit
      t.integer :recipe_id

      t.timestamps
    end
  end
end
