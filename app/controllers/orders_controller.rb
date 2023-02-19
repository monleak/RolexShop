class OrdersController < ApplicationController
    def create
  @order = Order.new(order_params)

  if @order.save
    redirect_to @order, notice: 'Order was successfully created.'
  else
    render :new
  end
end

private

def order_params
  params.require(:order).permit(:user_id, :watch_id, :watch_box_id, :watch_strap_id)
end
end
