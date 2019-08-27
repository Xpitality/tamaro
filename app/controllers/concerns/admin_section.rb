module AdminSection
  extend ActiveSupport::Concern

  included do
    rescue_from Exception, with: :graceful_errors unless Rails.env.development?

    before_action :authenticate_user!

    layout 'admin'
  end


  private

  # def user_not_authorized
  #   # flash[:alert] = "Access denied."
  #   # redirect_to (request.referrer || root_path)
  #   redirect_to customer_client_orders_path
  # end

  def graceful_errors(exception)
    @error = exception
    Xpitality::Notifier::ExceptionNotifier.notify exception
    render template: 'errors/404', status: 404
  end
end