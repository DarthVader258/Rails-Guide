class UserPlan < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validates :expiry_date, presence:true

  def expiration_date
    (expiry_date - Date.today).to_i
  end
end
