class CreatePeliculaPersonajes < ActiveRecord::Migration[7.0]
  def change
    create_table :pelicula_personajes do |t|
      t.references :pelicula, null: false, foreign_key: true
      t.references :personaje, null: false, foreign_key: true

      t.timestamps
    end
  end
end
