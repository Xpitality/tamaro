# copied from some RailsCast (could not remember the #...)
# expects a DEVELOPMENT_REDIRECT_EMAIL env var

class CategoryMailInterceptor
  def self.delivering_email(message)
    message.smtpapi.category = Rails.application.credentials.domain_name
  end
end

ActionMailer::Base.register_interceptor(CategoryMailInterceptor)  if Rails.env.production?

ActionMailer::Base.smtp_settings = {
  address: Rails.application.credentials.email_provider_address,
  port: 587, # ports 587 and 2525 are also supported with STARTTLS
  enable_starttls_auto: true, # detects and uses STARTTLS
  user_name: Rails.application.credentials.email_provider_username,
  password: Rails.application.credentials.email_provider_password,
  authentication: :plain,
  domain: Rails.application.credentials.domain_name
}

ActionMailer::Base.default_url_options = { host: Rails.application.credentials.domain_name }