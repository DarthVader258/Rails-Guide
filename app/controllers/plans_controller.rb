class PlansController < ApplicationController
	before_action :set_params, only: [:show, :edit, :update, :destroy, :activate, :deactivate]

	def index
		@plans = Plan.all
	end

	def show
	end

	def new
		@plan = Plan.new
	end

	def create
		@plan = Plan.new(plan_params)
		if @plan.save
			redirect_to plans_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
	end

	def update
		if @plan.update(plan_params)
			redirect_to plans_path
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		if @plan.destroy
			redirect_to plans_path, status: :see_other
		end
	end

	def activate
		# @plan.activate!
		# redirect_to plans_path, notice: "Plan acitvated successfully"
		Plan.transaction do
			# Deactivate other plans
			Plan.where.not(id: @plan.id).update_all(active: false)

			# Activate the current plan
			@plan.update(active: true)
		end

		flash[:notice] = "#{@plan.name} Plan activates successfully"
		redirect_to plans_path
	end

	def deactivate
		# @plan.deactivate!
		# redirect_to plans_path, notice: "Plan deactivate successfully"
		@plan.update(active: false)
		flash[:notice] = "#{@plan.name} Plan deactivates successfully"
		redirect_to plans_path
	end

	private
	def set_params
		@plan = Plan.find(params[:id])
	rescue ActiveRecord::RecordNotFound => error
		redirect_to plans_path, notice: error
	end

	def plan_params
		params.require(:plan).permit(:name, :price, :user_id)
	end

end
