class CyclesController < ApplicationController
  def index
    @cycles = Cycle.all
  end

  def show
    @cycle = Cycle.all.find(params[:id])
  end

  def new
    @cycle = Cycle.new
  end

  def create
    @cycle = Cycle.new(cycle_params)

    if @cycle.save
      redirect_to @cycle
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cycle = Cycle.find(params[:id])
  end

  def update
    @cycle = Cycle.find(params[:id])

    if @cycle.save
      redirect_to @cycle
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cycle = Cycle.find(params[:id])

    @cycle.destroy
    redirect_to cycles_path, status: :see_other
  end

  private

  def cycle_params
    params.require(:cycle).permit(:cycle_length, :time_unit)
  end
end
