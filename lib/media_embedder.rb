require 'uri'
require 'media_embedder/parser'
require 'media_embedder/hyperlink_resource'
Dir[File.expand_path("../media_embedder/resource/*.rb", __FILE__)].each { |file| require file }

module MediaEmbedder
end
