class UserPlan < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :expiry_date, presence:true
end
