require 'spec_helper'

describe "forum/threads/index" do
  before(:each) do
    assign(:forum_threads, [
      stub_model(Forum::Thread,
        :creator => 1,
        :subject => "Subject",
        :forum_id => 2
      ),
      stub_model(Forum::Thread,
        :creator => 1,
        :subject => "Subject",
        :forum_id => 2
      )
    ])
  end

  it "renders a list of forum/threads" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
