require 'spec_helper'

describe MediaEmbedder::Resource::YoutubeShort do
  it 'accepts shortened youtube links' do
    resource = MediaEmbedder::Resource::YoutubeShort.new('http://youtu.be/NSWOvw5N4nU')
    resource.can_process_url?.should be_true
  end

  it 'creates html embed code for the video' do
    resource = MediaEmbedder::Resource::YoutubeShort.new('http://youtu.be/NSWOvw5N4nU')
    embed_code = '<iframe width="560" height="315" src="http://www.youtube.com/embed/NSWOvw5N4nU" frameborder="0" allowfullscreen></iframe>'
    resource.to_html.should eq embed_code
  end
end
