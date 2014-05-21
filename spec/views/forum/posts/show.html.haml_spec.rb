require 'spec_helper'

describe "forum/posts/show" do
  before(:each) do
    @forum_post = assign(:forum_post, stub_model(Forum::Post,
      :thread_id => 1,
      :subject => "Subject",
      :body => "MyText",
      :author => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
