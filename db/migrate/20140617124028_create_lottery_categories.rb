class CreateLotteryCategories < ActiveRecord::Migration
  def change
    create_table :lottery_categories do |t|
      t.string :name
      t.text :description
      t.integer :time_cycle
      t.time :drawing_time

      t.timestamps
    end
  end
end
