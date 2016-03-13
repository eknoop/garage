class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.text :details

      t.timestamps null: false
    end
  end
end
