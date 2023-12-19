class Question < ApplicationRecord
	has_rich_text :content
	paginates_per 5
	# max_paginates_per 100
	# max_pages 100
	validates :title, :keyword, :answer, presence: true
	def self.ransackable_attributes(auth_object = nil)
	  ["answer", "created_at", "id", "is_premium", "keyword", "title", "updated_at"]
	end

	def toggle_like
		if liked?
			decrement!(:likes)
		else
			increment!(:likes)
			decrement!(:dislikes) if disliked?
		end
	end

	def toggle_dislike
		if disliked?
			decrement!(:dislikes)
		else
			increment!(:dislikes)
			decrement!(:likes) if liked?
		end
	end

	def liked?
		likes.positive?
	end

	def disliked?
		dislikes.positive?
	end

end
	