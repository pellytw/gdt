class CreateJugadorEquipoFechaTorneos < ActiveRecord::Migration
  def change
    create_table :jugador_equipo_fecha_torneos do |t|
      t.references :jugador_equipo, index: true
      t.references :fecha_torneo, index: true
      t.boolean :capitan

      t.timestamps
    end
  end
end
