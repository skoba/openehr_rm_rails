class CreateContentItemProxies < ActiveRecord::Migration
  def change
    create_table :content_item_proxies do |t|
      t.references :section, index: true

      t.timestamps null: false
    end
    add_foreign_key :content_item_proxies, :content_items
  end
end
