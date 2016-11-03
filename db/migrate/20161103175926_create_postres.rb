class CreatePostres < ActiveRecord::Migration
  def change
    create_table :postres do |t|
      t.string :nombre
      t.integer :cantidad
      t.float :porcion
      t.float :gramos
      t.float :calorias
      t.references :diet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
