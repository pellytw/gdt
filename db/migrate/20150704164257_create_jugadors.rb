class CreateJugadors < ActiveRecord::Migration
  def change
    create_table :jugadors do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.date :fecha_nacimiento
      t.string :imagen
      t.references :club, index: true
      t.references :posicion, index: true

      t.timestamps
    end
  end
end
