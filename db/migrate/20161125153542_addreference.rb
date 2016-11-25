class Addreference < ActiveRecord::Migration[5.0]
  def change
	add_reference :recipes, :user, index: true, foreign_key: true
	add_reference :steps, :recipe, index: true, foreign_key: true
	add_reference :recipe_imgs, :recipe, index: true, foreign_key: true
  end
end
