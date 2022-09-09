class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    @goals_length = Goal.all.length
  end

  def show
    @goal = Goal.find(params[:id])
    @human_length = @goal.length.humanize
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to @goal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])

    if @goal.update(goal_params)
      redirect_to @goal
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @goal = Goal.find(params[:id])

    @goal.destroy
    redirect_to goals_path, status: :see_other
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :length, :completed)
  end
end
