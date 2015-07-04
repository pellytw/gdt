class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.string :imagen
      t.references :participante, index: true
      t.references :tactica, index: true

      t.timestamps
    end
  end
end
