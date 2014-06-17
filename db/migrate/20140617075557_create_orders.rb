class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :round_number
      t.integer :user_id
      t.integer :purchase_type_id

      t.timestamps
    end
  end
end
