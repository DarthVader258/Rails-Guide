class RemoveActiveFromPlans < ActiveRecord::Migration[7.0]
  def change
    remove_column :plans, :active
  end
end