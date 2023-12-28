class Plan < ApplicationRecord
  belongs_to :user
  has_many :user_plans
  has_many :users, through: :user_plans 
  
  scope :activated, -> { where(active:true)}

  # when creating belongs_to association model name must be singular
  validates :name, :price, presence: true

  # def activate!
  #   update(active: true)
  # end

  # self.ransackable_attributes
  # def self.toggle_activation_for_user(user, plan_id)
  #   Plan.transaction do
  #     current_plan = user.plans.activated.first
  #     if current_plan && current_plan.id.to_s == plan.id
  #       current_plan.deactivate!
  #     else
  #       current_plan&.deactivate!
  #       plan = find(plan_id)
  #       plan.activate_for_user(user)
  #     end
  #   end
  # end

  # def activated_for_user(user)
  #   update(active:true)
  # end

  # def deactivate!
  #   update(active: false)
  # end

  # def activated?
  #   active
  # end 

end
