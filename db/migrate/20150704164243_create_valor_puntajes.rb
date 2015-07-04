class CreateValorPuntajes < ActiveRecord::Migration
  def change
    create_table :valor_puntajes do |t|
      t.integer :doble_amarilla
      t.integer :roja_directa
      t.integer :amarilla
      t.integer :figura
      t.integer :penal_errado
      t.integer :gol_penal
      t.integer :gol
      t.integer :penal_atajado
      t.boolean :valla_invicta
      t.boolean :chenemigo

      t.timestamps
    end
  end
end
