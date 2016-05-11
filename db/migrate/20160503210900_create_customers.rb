class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.decimal :cpf
      t.string :address_street
      t.integer :address_number

      t.timestamps null: false
    end
  end
end
