class AddStatusUserIdBonusIdToLottery < ActiveRecord::Migration
  def change
    add_column :lotteries, :status, :string
    add_column :lotteries, :user_id, :integer
    add_column :lotteries, :bonus_id, :integer
  end
end
