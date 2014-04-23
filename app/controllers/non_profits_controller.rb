class NonProfitsController < ApplicationController

  def index
    @non_profits = NonProfit.all
  end

  def new
    @non_profit = NonProfit.new
  end

  def create
    @non_profit = NonProfit.new(non_profit_params)
    if @non_profit.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @non_profit = NonProfit.find(params[:id])
    @donation = Donation.new
  end

  def edit
    @non_profit = NonProfit.find(params[:id])
    render edit_non_profit_path
  end

  def update
    @non_profit = NonProfit.find(params[:id])
    if @non_profit.update(non_profit_params)
      flash[:notice] = "Update successful"
      redirect_to root_path
    else
      render edit_non_profit_path
    end
  end

  def destroy
    @non_profit = NonProfit.find(params[:id])
    @non_profit.destroy
    redirect_to root_path
  end

private

  def non_profit_params
    params.require(:non_profit).permit(:name, :description)
  end
end
