class PaymentsController < ApplicationController
  def pay
    @order = Order.find(params[:order_id])
  end
end
