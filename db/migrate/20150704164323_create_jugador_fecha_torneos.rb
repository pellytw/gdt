class CreateJugadorFechaTorneos < ActiveRecord::Migration
  def change
    create_table :jugador_fecha_torneos do |t|
      t.references :jugador, index: true
      t.references :fecha_torneo, index: true

      t.timestamps
    end
  end
end
