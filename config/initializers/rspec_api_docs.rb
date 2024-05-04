# frozen_string_literal: true

if Rails.env.local?
  module RspecApiDocumentation
    class RackTestClient < ClientBase
      def response_body
        last_response.body.encode('utf-8')
      end
    end
  end
end
