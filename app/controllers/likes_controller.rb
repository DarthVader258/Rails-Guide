class LikesController < ApplicationController
	def create
		@like = current_user.likes.new(like_params)
		if !@like.save
			flash[:notice] = @like.errors.full_messages.to_sentence
		end
			redirect_to questions_path
	end

	def destroy
		@like = current_user.likes.find(params[:id])
		question = @like.question
		@like.destroy
		redirect_to questions_path	
	end

	private

	def like_params
		params.require(:like).permit(:question_id)
	end
end
