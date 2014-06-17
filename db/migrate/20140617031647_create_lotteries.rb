class CreateLotteries < ActiveRecord::Migration
  def change
    create_table :lotteries do |t|
      t.string :numbers_collection
      t.integer :times
      t.integer :lottery_category_id
      t.integer :order_id

      t.timestamps
    end
  end
end
