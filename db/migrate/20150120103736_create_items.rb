class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :entry, index: true
      t.references :item_proxy, index: true

      t.timestamps null: false
    end
  end
end
