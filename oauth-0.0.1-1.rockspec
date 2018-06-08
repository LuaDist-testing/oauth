-- This file was automatically generated for the LuaDist project.

package = "oauth"
version = "0.0.1-1"
-- LuaDist source
source = {
  tag = "0.0.1-1",
  url = "git://github.com/LuaDist-testing/oauth.git"
}
-- Original source
-- source = {
-- 	url = "git://github.com/ignacio/LuaOAuth.git",
-- 	branch = "v0.0.1"
-- }
description = {
	summary = "Lua OAuth, an OAuth client library.",
	detailed = [[
		Lua client for OAuth 1.0 enabled servers.
	]],
	license = "MIT/X11",
	homepage = "http://github.com/ignacio/LuaOAuth"
}
dependencies = {
	"lua >= 5.1",
	"luasocket",
	"luasec",
	"luacrypto",
	"lbase64"
}
build = {
	type = "builtin",
	modules = {
		OAuth = "src/OAuth.lua"
	}
}