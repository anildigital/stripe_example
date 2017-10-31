# Rails.configuration.stripe = {
#   publishable_key: Rails.application.secrets['stripe']['publishable_key'],
#   secret_key:   Rails.application.secrets['stripe']['secret_key']
# }

# Stripe.api_key = Rails.configuration.stripe[:secret_key]

Rails.configuration.stripe = {
  publishable_key: "pk_test_iRcTotsaBsT8DUWwP87h1u4S",
  secret_key: "sk_test_GDxIyob2yYrppZ0bN8W1kHzY"
}

Stripe.api_key = "sk_test_GDxIyob2yYrppZ0bN8W1kHzY"


StripeEvent.configure do |events|
  events.subscribe 'charge.succeeded' do |event|
    # Here you can send notification to user,
    # change transaction state or whatever you want.
  end
end
