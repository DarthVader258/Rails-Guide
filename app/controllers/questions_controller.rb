class QuestionsController < ApplicationController
	before_action :set_params, only: [:show, :edit, :update, :destroy, :toggle_like, :toggle_dislike]
	def index
		@q = Question.ransack(params[:q])
		@questions = @q.result(distinct: true).page(params[:page])
		# @questions = Question.all
	end

	def show
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to questions_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
	end

	def update
		if @question.update(question_params)
			redirect_to questions_path
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		if @question.destroy
			redirect_to questions_path, status: :see_other
		end
	end

	private
	def set_params
		@question = Question.find(params[:id])
	rescue ActiveRecord::RecordNotFound => error
			redirect_to questions_path, alert: error
	end

	def question_params
		params.require(:question).permit(:title, :keyword, :is_premium, :answer)
	end
end
