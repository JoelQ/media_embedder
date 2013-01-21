module MediaEmbedder
  module Resource
    class Image
      Parser.register(self)

      def initialize(url)
        @url = URI.parse url
      end

      def can_process_url?
        @url.path.end_with? '.png', '.gif', '.jpg'
      end

      def to_html
        "<img src=\"#{@url}\" />"
      end
    end
  end
end
