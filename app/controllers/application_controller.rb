class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  #protect_from_forgery with: :null_session

  before_action :ensure_authenticated_master_face

  def ensure_authenticated_master_face
    head :unauthorized  unless current_master_face
  end

  def current_master_face
    api_key = ApiKey.active.where(access_token: token).first
    if api_key
      return api_key.master_face
    else
      return nil
    end
  end

  def token
    bearer = request.headers["HTTP_AUTHORIZATION"]

    bearer ||= request.headers["rack.session"].try(:[], 'Authorization')

    if bearer.present?
      bearer.split.last
    else
      nil
    end
  end
end
