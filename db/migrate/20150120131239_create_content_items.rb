class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.references :composition
      t.references :content_item_proxy

      t.timestamps null: false
    end
  end
end
