class CreatePosicions < ActiveRecord::Migration
  def change
    create_table :posicions do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
  end
end
