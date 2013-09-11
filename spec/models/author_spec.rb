require 'spec_helper'

describe Author do
  it { should have_valid(:name).when('Scotty', 'Bones', 'Uhura', 'Spock') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:email).when('a@b.com', 'someone@gmail.com') }
  it { should_not have_valid(:email).when(nil, '',) }

  it { should have_valid(:phone).when('1234567890') }
  it { should_not have_valid(:phone).when('5', '42', '9999999999999999999') }

  it { should have_valid(:password).when('xyz123!') }
  it { should_not have_valid(:password).when('hello') }
end
