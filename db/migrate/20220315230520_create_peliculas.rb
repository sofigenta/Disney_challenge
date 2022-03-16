class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :imagen
      t.text :titulo
      t.date :fecha_de_creacion
      t.integer :calificacion

      t.timestamps
    end
  end
end
