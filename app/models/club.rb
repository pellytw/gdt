class Club < ActiveRecord::Base
 has_many :jugadors
 def to_s
  	"#{ self.nombre }"
  end
end
