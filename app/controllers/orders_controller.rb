class OrdersController < ApplicationController
  def new
    @order = Order.new
    @order.owner = current_user

    
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
