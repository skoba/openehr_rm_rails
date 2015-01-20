class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :entry, index: true
      t.references :item_proxy, index: true
      t.string :path
      t.string :name
      t.string :archetypeid

      t.timestamps null: false
    end
  end
end
