class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name
      t.text :description
      t.decimal :irr, precision: 10, scale: 8

      t.timestamps
    end
  end
end
