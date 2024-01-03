class RemoveUserIdFromPlans < ActiveRecord::Migration[7.0]
  def change
    remove_reference :plans, :user, null: false, foreign_key: true
  end
end
