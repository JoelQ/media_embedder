require 'spec_helper'

describe MediaEmbedder::Resource::Image do
  it 'accepts PNG images' do
    resource = MediaEmbedder::Resource::Image.new('http://image.com/image.png')
    resource.can_process_url?.should be_true
  end

  it 'accepts GIF images' do
    resource = MediaEmbedder::Resource::Image.new('http://image.com/image.gif')
    resource.can_process_url?.should be_true
  end

  it 'accepts JPEG images' do
    resource = MediaEmbedder::Resource::Image.new('http://image.com/image.jpg')
    resource.can_process_url?.should be_true
  end

  it 'converts a link into an html image tag' do
    resource = MediaEmbedder::Resource::Image.new('http://image.com/image.png')
    resource.to_html.should eq '<img src="http://image.com/image.png" />'
  end

end
