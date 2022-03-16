class Pelicula < ApplicationRecord
  has_one :genero
  has_many :pelicula_personajes
  has_many :personajes, through: :pelicula_personajes
end
