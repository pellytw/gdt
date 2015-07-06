class Equipo < ActiveRecord::Base
  belongs_to :participante
  belongs_to :tactica
  def to_s
  	"#{ self.nombre }"
  end
end
