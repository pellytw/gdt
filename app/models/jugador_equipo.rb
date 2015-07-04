class JugadorEquipo < ActiveRecord::Base
  belongs_to :jugador
  belongs_to :equipo
end
