class JugadorEquipoFechaTorneo < ActiveRecord::Base
  belongs_to :jugador_equipo
  belongs_to :fecha_torneo
end
