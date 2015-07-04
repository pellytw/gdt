class Jugador < ActiveRecord::Base
  belongs_to :club
  belongs_to :posicion
end
