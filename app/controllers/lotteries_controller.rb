class LotteriesController < ApplicationController

  before_action :login_required

  def index
    @lotteries = current_user.lotteries
  end

  def show
    @lottery = current_user.lotteries.find(param[:id])
  end

  def new
    @lottery = Lottery.new
    @lottery.owner = current_user
  end

  def create
    @lottery = current_user.lotteries.build(lottery_params)

    if @lottery.save
      redirect_to lotteries_path
    else
      render :new
    end
  end

  def edit
    @lottery = current_user.lotteries.find(param[:id])
  end

  def update
    @lottery = current_user.lotteries.find(param[:id])

    if @lottery.update(lottery_params)
      redirect_to lottery_path(@lottery)
    else
      render :edit
    end
  end

  def destroy
    @lottery = current_user.lotteries.find(param[:id])
    @lottery.destroy

    redirect_to lotteries_path
  end

  private

  def lottery_params
    param.require(:lottery).permit(:numbers_collection, :times)
  end
end
