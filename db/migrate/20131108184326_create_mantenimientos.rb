class CreateMantenimientos < ActiveRecord::Migration
  def change
    create_table :mantenimientos do |t|
      t.string :apartamento_numero
      t.decimal :pintura
      t.decimal :fumigacion
      t.decimal :plomeria
      t.decimal :total

      t.timestamps
    end
  end
end
