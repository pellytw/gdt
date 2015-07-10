class Tactica < ActiveRecord::Base
  has_many :equipos
  def to_s
  	"#{ self.nombre }"
  end
end
