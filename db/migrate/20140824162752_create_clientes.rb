class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellidos
      t.integer :edad
      t.string :telefono
      t.string :estado_cv
      t.string :email

      t.timestamps
    end
  end
end
