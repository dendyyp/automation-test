autoload :Base64, 'base64'
autoload :JsonPath, 'jsonpath'

When(/^client sends a (verbose )?(GET|POST|PUT|DELETE|PATCH) request to "([^"]*)"(?: with body:)?$/) do |verbose, *args|
@path ||= @api_url

request_type = args.shift.downcase
path = URI.encode(APIHelper.resolve_variable(self, @path + args.shift))
path.gsub!('%25', '%')

input = args.shift
options = { headers: @headers, timeout: @timeout }

rgx_enc = /\{\{([a-zA-Z0-9_]+)\}\}/
end