class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|

      t.timestamps null: false
    end
  end
end
