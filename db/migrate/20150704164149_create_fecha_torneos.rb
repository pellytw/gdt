class CreateFechaTorneos < ActiveRecord::Migration
  def change
    create_table :fecha_torneos do |t|
      t.references :fecha, index: true
      t.references :torneo, index: true

      t.timestamps
    end
  end
end
