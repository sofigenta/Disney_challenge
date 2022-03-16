class PeliculaPersonaje < ApplicationRecord
  belongs_to :pelicula
  belongs_to :personaje
end
