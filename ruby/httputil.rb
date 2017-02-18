module Irc
module Utils

require 'resolv'
require 'net/http'

class HttpUtil
  def get(uri, readtimeout=10, opentimeout=5)
    proxy = get_proxy(uri)
  end
end
end
end
