class Mensaje < ApplicationRecord
  belongs_to :publicacion
  validates :autor, :mensaje, presence: true
  validates :mensaje, length: {minimum:15}
  
end