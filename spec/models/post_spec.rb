require 'spec_helper'

describe Post do
  it { should belong_to :author }

  it { should have_valid(:author).when(Author.new) }
  it { should_not have_valid(:author).when(nil) }

  it { should have_valid(:title).when('Khhhhhhaaaaaaannnnn!') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:content).when('Khan Noonien Singh,
    commonly shortened to Khan, is a fictional villain in the
    Star Trek science fiction franchise.')}
  it { should_not have_valid(:content).when(nil, '')}

  it 'has an author' do
    post = FactoryGirl.create(:post)
    expect(post).to be_valid
    expect(post.author.name).to_not be_nil
  end
end
