class ApplicationController < ActionController::Base
  before_action :basic_auth

  def index
    render html: 'hello worle'
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'hello world' && password == '6565'
    end
  end
end
