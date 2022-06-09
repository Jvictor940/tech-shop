class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :label
      t.float :price
      t.text :item_desc
      t.integer :user_id

      t.timestamps
    end
  end
end
