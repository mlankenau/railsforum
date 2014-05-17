require 'spec_helper'

describe "forum/forums/show" do
  before(:each) do
    @forum_forum = assign(:forum_forum, stub_model(Forum::Forum,
      :parent_forum_id => 1,
      :name => "Name",
      :pos => 2,
      :moderator => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
