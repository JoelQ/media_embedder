require 'uri'
require 'media_embedder/parser'
require 'media_embedder/hyperlink_resource'
puts 'before loading directory'
Dir[File.expand_path("lib/media_embedder/resource/*.rb")].each { |file| puts file; require file }

module MediaEmbedder
end
