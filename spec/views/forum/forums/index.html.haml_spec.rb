require 'spec_helper'

describe "forum/forums/index" do
  before(:each) do
    assign(:forum_forums, [
      stub_model(Forum::Forum,
        :parent_forum_id => 1,
        :name => "Name",
        :pos => 2,
        :moderator => 3
      ),
      stub_model(Forum::Forum,
        :parent_forum_id => 1,
        :name => "Name",
        :pos => 2,
        :moderator => 3
      )
    ])
  end

  it "renders a list of forum/forums" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
