class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :descrip

      t.timestamps
    end
  end
end
