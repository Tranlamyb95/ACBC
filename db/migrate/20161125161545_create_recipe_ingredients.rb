class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
	t.integer :recipe_id
	t.integer :ingedient_id
      t.string :unit
      t.float :amount

      t.timestamps
    end
	add_index :recipe_ingredients, :ingedient_id
	add_index :recipe_ingredients, :recipe_id
  end
end
