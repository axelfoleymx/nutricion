class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :food1
      t.string :food2
      t.string :food3
      t.string :food4
      t.string :food5
      t.string :food6

      t.timestamps null: false
    end
  end
end
