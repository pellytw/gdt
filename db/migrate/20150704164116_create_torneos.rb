class CreateTorneos < ActiveRecord::Migration
  def change
    create_table :torneos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
