class Question < ApplicationRecord
	has_many :likes
	has_rich_text :content
	paginates_per 5
	# max_paginates_per 100
	# max_pages 100
	validates :title, :keyword, :answer, presence: true
	def self.ransackable_attributes(auth_object = nil)
	  ["answer", "created_at", "id", "is_premium", "keyword", "title", "updated_at"]
	end
end
	