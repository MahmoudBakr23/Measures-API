# Application controller class
class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, 'himtsu')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split[1]
    begin
      JWT.decode(token, 'himtsu', true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end

  def logged_in_user
    return unless decoded_token

    user_id = decoded_token[0]['user_id']
    @user = User.find_by(id: user_id)
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  def check_logged_in
    logged_in? ? logged_in_user : nil
  end
end
