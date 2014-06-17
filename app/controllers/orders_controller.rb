class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.owner = current_user
    
    case params[:type]
    # 双色球
    when 'ssq'
      render :ssq_new
    end
    # 福彩3D
    when 'f3d'
      render :f3d_new
    end

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
  end
end
