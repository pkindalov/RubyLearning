# app/middleware/authentication_middleware.rb
require 'jwt'

class AuthenticationMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)

    if excluded_path?(request.env['REQUEST_PATH'])
      return @app.call(env)
    end

    token = extract_token(request)

    if valid_token?(token)
      @app.call(env)
    else
      [401, { 'Content-Type' => 'application/json' }, [{ error: 'Unauthorized' }.to_json]]
    end
  end

  private

  def excluded_path?(path)
    excluded_paths = %w[/api/v1/login /api/v1/register]
    excluded_paths.include?(path)
  end

  def extract_token(request)
    authorization_header = request.get_header('HTTP_AUTHORIZATION')
    authorization_header&.split(' ')&.last
  end

  def valid_token?(token)
    return false unless token

    begin
      decoded_token = JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')
      decoded_token.present?
    rescue JWT::DecodeError
      false
    end
  end
end