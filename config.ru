require "rack/jekyll"
require 'rack/rewrite'

use Rack::Rewrite do
  rewrite    %r{(/.+)?/([^\./]+)$}, '$1/$2.html'
end

run Rack::Jekyll.new
