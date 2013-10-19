class PaymentsController < ApplicationController

  def new
  end

  def final
  end

  def create
    @amount = 6500

    customer = Stripe::Customer.create(email: 'example@example.com', card: params[:stripeToken])

    Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: "Twerk Academy Class",
      currency: 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to checkout_path
  end


end
