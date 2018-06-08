local OAuth = require "OAuth"

module(..., lunit.testcase, package.seeall)

function test()
	local client = OAuth.new("anonymous", "anonymous", {
		RequestToken = "http://127.0.0.1:12345/foo",
		AuthorizeUser = {"http://127.0.0.1:12345/bar", method = "GET"},
		AccessToken = "http://127.0.0.1:12345/baz"
	})

	local ok, err_msg = client:RequestToken(function(err, values, status, headers, response_line, response_body)
		assert(err)
		assert_string(err.message) -- error message
		assert_number(err.code) -- error code
		assert_equal(process.constants.ECONNREFUSED, err.code)
	end)
	
	process:loop()
end
