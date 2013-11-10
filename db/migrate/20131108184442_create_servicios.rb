class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :apartamento_numero
      t.decimal :agua
      t.decimal :luz
      t.decimal :telefono
      t.decimal :total

      t.timestamps
    end
  end
end
