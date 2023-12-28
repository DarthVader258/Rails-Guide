class AddExpirationDateToUserPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :user_plans, :expiry_date, :date
  end
end
