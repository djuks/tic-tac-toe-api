# frozen_string_literal: true

require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format = :html
  config.request_headers_to_include = %w[Accept Content-Type]
  config.docs_dir = Rails.public_path.join('docs')
  config.disable_dsl_status!
  config.keep_source_order = false
end
