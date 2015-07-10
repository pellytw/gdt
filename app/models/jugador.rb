class Jugador < ActiveRecord::Base
  belongs_to :club
  belongs_to :posicion

  def to_s
  	"#{ self.nombre }"
  end
end
