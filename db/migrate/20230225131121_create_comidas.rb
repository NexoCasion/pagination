class CreateComidas < ActiveRecord::Migration[7.0]
  def change
    create_table :comidas do |t|
      t.string :nome
      t.text :desc
      t.float :price
      t.integer :quantidade
      t.boolean :estragado
      t.date :compra
      t.datetime :vencimento

      t.timestamps
    end
  end
end
