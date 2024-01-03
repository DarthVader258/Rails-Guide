class Plan < ApplicationRecord
  
  has_many :user_plans
  has_many :users, through: :user_plans 
  
  validates :name, :price, presence: true

  def expiry_date
    case name
    when "Monthly"
      30.days.from_now.to_date
    when "Quarterly"
      90.days.from_now.to_date
    when "Half Yearly"
      180.days.from_now.to_date
    when "Yearly"
      365.days.from_now.to_date
    else
      nil
    end
  end

  def active_for_user
    # user_plans.exists?(user_id: user.id)
  end
end
