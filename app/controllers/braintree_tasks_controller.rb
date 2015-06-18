class BraintreeTasksController < ApplicationController
  def client_token
    token=Braintree::ClientToken.generate
    render :json => {:client_token => token}
  end

  def purchases
  	nonce = params[:payment_method_nonce]
  	amount = params[:payment_amount]

  	puts nonce
  	puts amount.to_s
  	result = Braintree::Transaction.sale(
  		:amount => amount.to_s,
  		:payment_method_nonce => nonce
	)
	puts result.inspect
  	render :json => {:result => result}

  end
end
