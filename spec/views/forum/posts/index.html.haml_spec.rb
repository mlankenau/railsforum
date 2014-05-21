require 'spec_helper'

describe "forum/posts/index" do
  before(:each) do
    assign(:forum_posts, [
      stub_model(Forum::Post,
        :thread_id => 1,
        :subject => "Subject",
        :body => "MyText",
        :author => 2
      ),
      stub_model(Forum::Post,
        :thread_id => 1,
        :subject => "Subject",
        :body => "MyText",
        :author => 2
      )
    ])
  end

  it "renders a list of forum/posts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
