class CreatePersonajes < ActiveRecord::Migration[7.0]
  def change
    create_table :personajes do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.float :peso
      t.text :historia
      t.string :pelicula

      t.timestamps
    end
  end
end
