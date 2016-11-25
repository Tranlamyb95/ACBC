class CreateRecipeCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_categories do |t|
	t.integer :category_id
	t.integer :recipe_id
	

      t.timestamps
    end
	add_index :recipe_categories, :category_id
	add_index :recipe_categories, :recipe_id
  end
end
