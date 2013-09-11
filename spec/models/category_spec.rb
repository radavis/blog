require 'spec_helper'

describe Category do
  it { should belong_to :post }

  it { should have_valid(:name).when('warp drive technical specs') }
  it { should_not have_valid(:name).when(nil, '') }
end
