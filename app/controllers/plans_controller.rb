class PlansController < ApplicationController
	before_action :set_params, only: [:show, :edit, :update, :destroy]

	def index
		@plans = Plan.all
		# @plan = current_user.plans
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

	def activate_plan_for_user
    user = current_user
    plan = Plan.find(params[:id])
    expiry_date = (plan.expiry_date - Date.today).to_i

    UserPlan.transaction do
      # Deactivate other plans for the user
      user.user_plans.destroy_all

      # Create a new UserPlan for the selected plan
      user.user_plans.create(plan: plan, expiry_date: Date.today + expiry_date)
    end

    flash[:notice] = "#{plan.name} Plan activated successfully"
    redirect_to plans_path
  end
	
	private
	def set_params
		@plan = Plan.find(params[:id])
	rescue ActiveRecord::RecordNotFound => error
		redirect_to plans_path, notice: error
	end

	def plan_params
		params.require(:plan).permit(:name, :price)
	end

end
