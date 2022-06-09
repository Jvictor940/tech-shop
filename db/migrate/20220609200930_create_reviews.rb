class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :post
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
