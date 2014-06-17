class Lottery < ActiveRecord::Base
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id
  belongs_to :type, :class_name => "LotteryCategory", :foreign_key => :lottery_category_id

  validates :numbers_collection, :presence => true

  def editable_by?(user)
    user && user == owner
  end

end