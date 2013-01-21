# MediaEmbedder
`media_embedder` is a simple and easily extendible solution to parsing URLs in a string and replacing them with the proper media embed code. For example, a link to youtube would be converted to an HTML embed of that video.

MediaEmbedder comes with the following out of the box:
* Images (png, gif, jpg)
* Youtube (both short and long formats)
* Hyperlink (URLs that don't match any other processor are turned into HTML hyperlinks)

## Installation
```
gem install media_embedder
```

or add the following line to your Gemfile
```
gem 'media_embedder'
```

## Usage
To use MediaEmbedder in your project simply create a new instance of `MediaEmbedder::Parser` and call the `parse_links` method on it.

```ruby
  text = 'Check out this awesome cat picture! http://image.com/cat.gif'
  parser = MediaEmbedder::Parser.new(text)
  parser.parse_links
  #=> 'Check out this awesome cat picture! <img src="http://image.come/cat.gif" />'
```

## Extending with your own processors
MediaEmbedder was designed to be exendable and it is really easy to add your own strategy for embedding a particular type of media. You need to create a class that does the following:
* Registers itself with `MediaEmbedder::Parser` on load
* Implements the `can_process_url?` method which returns true or false
* Implements the `to_html` method which will return the desired HTML code to embed the media

Below is a very simple processor for images:
```ruby
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
```

## License
This gem is distributed under the MIT license
