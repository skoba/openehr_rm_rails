class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :path
      t.string :name
      t.string :archetypeid


      t.timestamps null: false
    end
  end
end
