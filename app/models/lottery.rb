class Lottery < ActiveRecord::Base
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id

  validates :numbers_collection, :presence => true

  def editable_by?(user)
    user && user == owner
  end

end