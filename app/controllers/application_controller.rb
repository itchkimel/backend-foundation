class ApplicationController < ActionController::API

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split.last
      begin
        JWT.decode(token, ENV['PASSWORD'], true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
        user_id = decoded_token[0]['user_id']
        class_name = decoded_token[0]['class_name']
      if class_name == 'User' 
        @user = User.find_by(id: user_id)
      elsif class_name == 'Admin'
        @admin = Admin.find_by(id: user_id)
      end
    end
  end

  def logged_in?
      !!current_user
  end 

  def user_authorized
    render json: { error: 'Please log in or create an account to submit a request' }, status: :unauthorized unless logged_in? && @user
  end
  
  def admin_authorized
    render json: { error: 'Please log in or create an account to submit a request' }, status: :unauthorized unless logged_in? && @admin
  end
  
  def authorized
      render json: { error: 'Please log in or create an account to submit a request' }, status: :unauthorized unless logged_in?
  end

end
