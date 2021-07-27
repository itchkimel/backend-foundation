class ApplicationController < ActionController::API

  def authenticate
    # check the user's token (from the headers)
    auth_header = request.headers["Authorization"]
    token = auth_header.split.last
    # parse that token using JWT
    payload = JWT.decode(token, ENV['PASSWORD'], true, { algorithm: 'HS256' }).first
    # lookup a user in the database using the parsed token payload
    # otherwise send back the user!
    @user = User.find_by(id: payload["user_id"])
    # byebug
  rescue
    # if they don't exist, or have a bad token, or didn't send a token, send back an error
    render json: { errors: ["Unauthorized"] }, status: :unauthorized
  end


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
          @user = User.find_by(id: user_id)
      end
  end

  def logged_in?
      !!current_user
  end 

  def authorized
      render json: { error: 'Please log in or create an account to submit a request' }, status: :unauthorized unless logged_in?
  end

end
