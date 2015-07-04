class CreateJugadorEquipos < ActiveRecord::Migration
  def change
    create_table :jugador_equipos do |t|
      t.references :jugador, index: true
      t.references :equipo, index: true

      t.timestamps
    end
  end
end
