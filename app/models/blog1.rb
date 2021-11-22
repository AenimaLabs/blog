class Blog1 < ApplicationRecord
    has_many :publicacions
    validates :nombre, :descripcion, presence: true
    
    
end
