# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "example.com"
#
#     resource "*",
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins 'localhost:3000', '127.0.0.1:3000', 'example.com' # Можете да добавите и други домейни
#
#     resource '*',
#              headers: :any,
#              methods: [:get, :post, :put, :patch, :delete, :options, :head],
#              expose: ['Authorization'], # Ако изпращате токени или други хедъри
#              max_age: 600
#   end
# end
