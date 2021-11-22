class Publicacion < ApplicationRecord
  has_many :mensajes
  belongs_to :blog1
  validates :titulo, :contenido, presence: true
  validates :titulo, length: {minimum: 7}
  
  
end
