class CreateRecipeImgs < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_imgs do |t|
      t.string :img_link

      t.timestamps
    end
  end
end
