class RequestsController < ApplicationController

  def create
    @request = Request.new(request_params)
    @request.save
    render json: @request, status: :created
  end

end
