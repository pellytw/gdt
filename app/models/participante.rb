class Participante < ActiveRecord::Base
  belongs_to :user
  def to_s
  	"#{ self.nombre } #{ self.apodo } #{ self.apellido }"
  end
end
