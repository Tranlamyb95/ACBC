class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :descrip
      t.integer :preptime
      t.integer :cooktime
      t.integer :serving

      t.timestamps
    end
  end
end
