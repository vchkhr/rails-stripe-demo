class ApplicationController < ActionController::Base
  require 'stripe'
  Stripe.api_key = ENV['STRIPE_SECRET_KEY']
end
