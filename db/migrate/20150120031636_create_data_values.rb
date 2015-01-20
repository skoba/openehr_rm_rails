class CreateDataValues < ActiveRecord::Migration
  def change
    create_table :data_values do |t|
      t.string :txt_value
      t.decimal :amount_value, precision: 9, scale: 6
      t.references :element, index: true

      t.timestamps null: false
    end
  end
end
