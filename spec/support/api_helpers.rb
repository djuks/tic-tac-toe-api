# frozen_string_literal: true

# API helpers methods
#
module ApiHelpers
  def api_request_headers
    { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
  end

  def json_response
    @json_response ||= JSON.parse(response_body)
  end

  def json_response_data
    json_response['data']
  end
end
