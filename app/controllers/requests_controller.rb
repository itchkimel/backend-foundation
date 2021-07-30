class RequestsController < ApplicationController

  before_action :authorized, only: [:create]

  def create
    request = @user.requests.create(request_params)
    render json: request, status: :created
  end


private 
  
  def request_params
    params.require(:request).permit(
      :name,
      :email, 
      :telephone, 
      :marital_status, 
      :children, 
      :work, 
      :reason_header, 
      :reason_body, 
      :amount, 
      :auto_address)
  end

end
