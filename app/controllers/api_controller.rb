class ApiController < ActionController::API
  include SerializationHelper

  helper_method :current_api_user
  delegate :t, to: I18n

  def current_api_user
    @current_api_user ||= User.find_by(id: doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end