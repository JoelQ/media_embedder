require 'spec_helper'

describe MediaEmbedder::HyperlinkResource do
  it 'outputs an html hyperlink' do
    resource = MediaEmbedder::HyperlinkResource.new('http://google.com')
    resource.to_html.should eq '<a href="http://google.com">http://google.com</a>'
  end
end
