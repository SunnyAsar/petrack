module Response
  def json_response(message, is_successful, data, status)
    render json: {
      message: message,
      is_successful: is_successful,
      data: data
    }, status: status
  end
end
