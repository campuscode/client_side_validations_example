class CreateCeps < ActiveRecord::Migration
  def change
    create_table :ceps do |t|
      t.string :codigo

      t.timestamps null: false
    end
  end
end
