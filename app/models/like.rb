class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :question_id}
  belongs_to :user
  belongs_to :question
end
