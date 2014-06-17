class LotteryCategory < ActiveRecord::Base
  has_many :lotteries
end
