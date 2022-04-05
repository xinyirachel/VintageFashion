Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)

# when we start rails s  every initializer run