# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins '*'
#     resource '*', headers: :any, methods: [:get, :post, :options]
#   end
# end
if Rails.env.development?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '/pitches/export.json', headers: :any, methods: :get
    end
  end
end
if Rails.env.production?
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # origins /https*:\/\/campingtamaro\.ch/
      origins '*'
      resource '/pitches/export.json', headers: :any, methods: :get
    end
  end
end
