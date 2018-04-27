require "json-schema"
require "json"

RSpec::Matchers.define :match_response_schema do |resource|
  match do |response|
    schema = File.read("#{Dir.pwd}/features/support/schemas/#{resource}.json")
    data = JSON.parse(response.body)

    JSON::Validator.validate!(schema, data)
  end
end
