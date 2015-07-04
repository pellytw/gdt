class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.string :imagen
      t.references :user, index: true

      t.timestamps
    end
  end
end
