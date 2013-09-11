require 'spec_helper'

describe Comment do
  it { should belong_to :post }

  it { should have_valid(:post).when(Post.new) }
  it { should_not have_valid(:post).when(nil) }

  it { should have_valid(:content).when('warp drive, engage') }
end


