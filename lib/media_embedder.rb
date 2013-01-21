require 'uri'
require 'media_embedder/parser'
require 'media_embedder/hyperlink_resource'
Dir[File.expand_path("lib/media_embedder/resource/*.rb")].each { |file| require file }

module MediaEmbedder
end
