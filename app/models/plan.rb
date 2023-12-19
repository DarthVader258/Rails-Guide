class Plan < ApplicationRecord
  belongs_to :user
  # when creating belongs_to association model name must be singular
  validates :name, :price, presence: true

  def activate!
    update(active: true)
  end

  def deactivate!
    update(active: false)
  end

  def activated?
    active
  end 

end
