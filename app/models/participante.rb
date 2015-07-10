class Participante < ActiveRecord::Base
  belongs_to :user
  has_many :equipos 
  def to_s
  	"#{ self.nombre } #{ self.apodo } #{ self.apellido }"
  end
end
