class CreateApartamentos < ActiveRecord::Migration
  def change
    create_table :apartamentos do |t|
      t.string :numero
      t.integer :meses
      t.decimal :mensualidad
      t.integer :mes
      t.string :estado
      t.string :inquilino

      t.timestamps
    end
  end
end
