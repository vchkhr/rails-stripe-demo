class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def pay
    @order = Order.find(params[:order_id])
    @order.update!(payment_intent_id: create_payment_intent.id) unless @order.payment_intent_id
    @payment_intent_client_secret = get_payment_intent.client_secret
  end

  private
  def create_payment_intent
    Stripe::PaymentIntent.create({
      amount: @order.total,
      currency: 'usd',
      automatic_payment_methods: {enabled: true},
      description: "Order #{@order.id}"
    })
  end

  def get_payment_intent
    Stripe::PaymentIntent.retrieve(@order.payment_intent_id)
  end
end
