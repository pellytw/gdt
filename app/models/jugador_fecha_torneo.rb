class JugadorFechaTorneo < ActiveRecord::Base
  belongs_to :jugador
  belongs_to :fecha_torneo
end
