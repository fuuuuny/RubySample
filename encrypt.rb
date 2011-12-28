#!/usr/bin/env ruby
##<+>
##ruby加密(md5,sha1,base64)
##加密 md5 sha1 base64
##2011/12/26

require 'md5'
puts MD5.hexdigest('admin')

require 'digest/sha1'
puts Digest::SHA1.hexdigest('admin')

require 'base64'
puts code = Base64.encode64('admin')
puts source = Base64.decode64(code)
