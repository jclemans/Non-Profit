class PlansController < ApplicationController

require "stripe"
Stripe.api_key = "sk_test_RhUycqW5vbnbGxDEwAORIHYS"

def create
  Stripe::Plan.create(
    :amount => 2000,
    :interval => 'month',
    :name => 'Amazing Gold Plan',
    :currency => 'usd',
    :id => 'gold'
  )
end

end
