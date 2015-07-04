class Equipo < ActiveRecord::Base
  belongs_to :participante
  belongs_to :tactica
end
