class CreateFechas < ActiveRecord::Migration
  def change
    create_table :fechas do |t|
      t.string :numero

      t.timestamps
    end
  end
end
