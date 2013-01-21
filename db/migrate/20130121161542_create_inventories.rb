class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :user_id
      t.string :card_id
      t.string :condition

      t.timestamps
    end
  end
end
