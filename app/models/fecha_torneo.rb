class FechaTorneo < ActiveRecord::Base
  belongs_to :fecha
  belongs_to :torneo
end
